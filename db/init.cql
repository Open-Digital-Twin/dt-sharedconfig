USE dt;

INSERT INTO user (email, id, name, password) VALUES (
  'franciscopaivaknebel@gmail.com',
  296375b2-6ba4-4e22-ad0f-ac963d4e9171,
  'Francisco Knebel',
  '$argon2i$v=19$m=4096,t=3,p=1$NFVVZElWUER0a3VPNUM0RUIzQWNSYWNFWmZyamxYSzM$kQdDj7+5oagkvKSyU+TWiczRT3Y4m5A/6YY8XDEf5Gs'
);

INSERT INTO twin (id, created_at, name, owner) VALUES (
  38162cb0-e585-43d7-b55d-5c240b2bfb7c,
  toTimestamp(now()),
  'Twin Instance',
  296375b2-6ba4-4e22-ad0f-ac963d4e9171
);
