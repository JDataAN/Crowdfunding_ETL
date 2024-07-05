CREATE TABLE public."Category" (
    category_id TEXT PRIMARY KEY,
    "category" VARCHAR NOT NULL
);

CREATE TABLE public."Subcategory" (
    subcategory_id TEXT PRIMARY KEY,
    "subcategory" VARCHAR NOT NULL
);

CREATE TABLE public."Campaign" (
    cf_id SERIAL PRIMARY KEY,
    contact_id INTEGER NOT NULL,
    company_name TEXT,
    description TEXT,
    goal FLOAT,
    pledged FLOAT,
    outcome TEXT,
    backers_count INTEGER,
    country TEXT,
    currency TEXT,
    launch_date TIMESTAMP,
    end_date TIMESTAMP,
    staff_pick BOOLEAN,
    spotlight BOOLEAN,
    "category" TEXT,
    "subcategory" TEXT,
    category_id TEXT,
    subcategory_id TEXT,
    FOREIGN KEY (contact_id) REFERENCES public."Contacts" (contact_id),
    FOREIGN KEY (category_id) REFERENCES public."Category" (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES public."Subcategory" (subcategory_id)
);

CREATE TABLE public."Contacts" (
    contact_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);
