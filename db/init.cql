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

INSERT INTO element (id, created_at, name, parent, twin) VALUES (
28f8db8e-1ca7-4f13-86fe-1bdbfc2d9e50,toTimestamp(now()),'Element Child',cfd24a17-2dfd-4f0c-8490-4945c95bf444,38162cb0-e585-43d7-b55d-5c240b2bfb7c
);
INSERT INTO element (id, created_at, name, parent, twin) VALUES (
cfd24a17-2dfd-4f0c-8490-4945c95bf444,toTimestamp(now()),'Element Parent',null,38162cb0-e585-43d7-b55d-5c240b2bfb7c
);
INSERT INTO element (id, created_at, name, parent, twin) VALUES (
f5cf30d3-2c7a-4552-b96d-1bc4735969cd,toTimestamp(now()),'Element 1',null,38162cb0-e585-43d7-b55d-5c240b2bfb7c
);
INSERT INTO element (id, created_at, name, parent, twin) VALUES (
3142192f-6bae-4f12-a6f3-5464dc37e790,toTimestamp(now()),'Element 2',null,38162cb0-e585-43d7-b55d-5c240b2bfb7c
);
INSERT INTO element (id, created_at, name, parent, twin) VALUES (
3c607839-60e8-4906-8d6b-f23e834dd2bf,toTimestamp(now()),'Element 3',null,38162cb0-e585-43d7-b55d-5c240b2bfb7c
);

INSERT INTO source (id, created_at, element, name) VALUES (
ed3150fb-d4d5-40e2-80a3-852bb138d03f,toTimestamp(now()),f5cf30d3-2c7a-4552-b96d-1bc4735969cd,'Source Element 1'
);
INSERT INTO source (id, created_at, element, name) VALUES (
d0a71d84-b80f-4558-beac-8887750652e3,toTimestamp(now()),3142192f-6bae-4f12-a6f3-5464dc37e790,'Source Element 2'
);
INSERT INTO source (id, created_at, element, name) VALUES (
db598a28-4e37-4b1c-b98f-2887c3ee1057,toTimestamp(now()),3c607839-60e8-4906-8d6b-f23e834dd2bf,'Source Element 3'
);
INSERT INTO source (id, created_at, element, name) VALUES (
eee9803e-8b0e-4eb2-b2f6-8c97bf2c3b99,toTimestamp(now()),cfd24a17-2dfd-4f0c-8490-4945c95bf444,'Source Element Parent'
);
INSERT INTO source (id, created_at, element, name) VALUES (
f81214fd-02b4-481c-85ff-b22face928b1,toTimestamp(now()),28f8db8e-1ca7-4f13-86fe-1bdbfc2d9e50,'Source Child 1'
);
INSERT INTO source (id, created_at, element, name) VALUES (
2a46f2b5-0719-423a-80c8-f16df6793b7b,toTimestamp(now()),28f8db8e-1ca7-4f13-86fe-1bdbfc2d9e50,'Source Child 2'
);
INSERT INTO source (id, created_at, element, name) VALUES (
b117ede0-b81a-4781-91c0-5a4b2ae3119f,toTimestamp(now()),28f8db8e-1ca7-4f13-86fe-1bdbfc2d9e50,'Source Child 3'
);
