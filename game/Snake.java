import org.java_websocket.client.WebSocketClient;
import org.java_websocket.handshake.ServerHandshake;

import java.net.URI;
import java.nio.ByteBuffer;

public class Snake {
    private static final String ESP32_IP = "192.168.4.1";
    private static final int ESP32_PORT = 80;

    private WebSocketClient webSocketClient;

    public Snake() {
        try {
            URI uri = new URI("ws://" + ESP32_IP + ":" + ESP32_PORT + "/ws");
            webSocketClient = new WebSocketClient(uri) {
                @Override
                public void onOpen(ServerHandshake handshakedata) {
                    System.out.println("WebSocket connection opened");
                }

                @Override
                public void onMessage(String message) {
                    // Handle text messages if needed
                }

                @Override
                public void onMessage(ByteBuffer bytes) {
                    // Handle binary messages
                    if (bytes.remaining() >= 4) {
                        byte[] values = new byte[4];
                        bytes.get(values);
                        int value1 = (values[1] << 8) | (values[0] & 0xFF);
                        int value2 = (values[3] << 8) | (values[2] & 0xFF);
                        // Process the received values
                        System.out.println("Received values: " + value1 + ", " + value2);
                    }
                }

                @Override
                public void onClose(int code, String reason, boolean remote) {
                    System.out.println("WebSocket connection closed");
                }

                @Override
                public void onError(Exception ex) {
                    System.out.println("WebSocket error: " + ex.getMessage());
                }
            };
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public  void run() {
        webSocketClient.connect();
        while (true) {
            System.out.println("Snake");
        }
        webSocketClient.close();
    }
}
