CREATE TYPE delivery_status AS ENUM ( 'Pending', 'Processed', 'Picked up', 'Delivered', 'Cancelled');
CREATE TYPE order_status AS ENUM ( 'Pending', 'Processed', 'Cancelled', 'Processing', 'Rejected');
CREATE TYPE product_options_type AS ENUM ( 'multiselect', 'boolean', 'enumradio', 'textarea' );
CREATE TYPE multimedia_type AS ENUM ( 'image', 'video');
CREATE TYPE user_type AS ENUM ( 'Admin', 'Driver', 'Manager', 'Staff', 'SuperAdmin', 'User');

