import sirius_sdk


alice_cfg = sirius_sdk.Config().setup_cloud(
    server_uri='https://agents.socialsirius.com',
    credentials='s7RxiBlpeNq8k8hrx4vlgjb8XFnGQGxTjIQgk74LgYSYAS4TuR1kZZxJg5MS6b+rwsta0b6XT84KQyxKcKkysg==',
    p2p={
        "their_verkey": "9b5fhAxyXoWP3ZHtpvKEFUf8o47uNcysuSd1c1VDq2yo",
        "my_keys": [
          "HYjGQGEtCbLisC2W3eeYxi196ojLV8sSdmGAAHt1Riry",
          "4MFTdbvvUVnNkQpU7UHJXz1Qea9WqvDXgbkxNetoBhCob45VUDS3Ef5fN3nLBqkGNSG5RftK9RidY7HxYcBp38Lm"
        ]
   }
)


bob_cfg = sirius_sdk.Config().setup_cloud(
    server_uri='https://agents.socialsirius.com',
    credentials='s7RxiBlpeNq8k8hrx4vlgjb8XFnGQGxTjIQgk74LgYSYAS4TuR1kZZxJg5MS6b+roqlm6OClcBVahrlBC6d7pg==',
    p2p={
        "their_verkey": "Hju2j1nh5EHk8VHQKHyoHWZrEJbimkVTdYZbhnfMLrmg",
        "my_keys": [
          "BdVo9Ha72yyQmrfqLRn3bAfxj8wgf2uy4Rz7hYvzaf9e",
          "3spH9x8K4ojQ4qKmqXFL67hK96DvMNAR8oSJhAx3QS2etHPd3xGcsdKZoinu8fpAueHMmbiB9ZLzwyJpXPrDdyj2"
        ]
   }
)


carl_cfg = sirius_sdk.Config().setup_cloud(
    server_uri='https://agents.socialsirius.com',
    credentials='s7RxiBlpeNq8k8hrx4vlgjb8XFnGQGxTjIQgk74LgYSYAS4TuR1kZZxJg5MS6b+rdefbzDIW5SbyYbkI+UYP/Q==',
    p2p={
        "their_verkey": "HCNPicRwYQHhdQ7Z5nNQ8kaAQkLeetmLctfyZ5GVxDy9",
        "my_keys": [
          "DQTDLvkSAjGYmKG5a9EvgvUwJzKXQfQuqxwgYHz6H9jE",
          "2dUPJxWVbNU1VhsUFAkVNLeq3kG7TghBLum8atfy6C3QAkG4GAYxAWEU4NMy3Qi9BGVdehP7UATaDdhw8g79A2jJ"
        ]
   }
)
