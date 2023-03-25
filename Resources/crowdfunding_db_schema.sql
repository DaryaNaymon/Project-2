-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/GDJvED
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Subcategory" (
    "Sub_Cat_id" text   NOT NULL,
    "Sub_Cat_name" text   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "Sub_Cat_id"
     )
);

CREATE TABLE "Category" (
    "Cat_id" int   NOT NULL,
    "Cat_name" text   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "Cat_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "email" text   NOT NULL,
    "last_name" text   NOT NULL,
    "first_name" text   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" text   NOT NULL,
    "description" text   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" text   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" text   NOT NULL,
    "currency" text   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "staff_pick" text   NOT NULL,
    "spotlight" text   NOT NULL,
    "category&sub-category" text   NOT NULL,
    "Cat_id" int   NOT NULL,
    "Cat_name" text   NOT NULL,
    "Sub_Cat_id" text   NOT NULL,
    "Sub_Cat_name" text   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Cat_id" FOREIGN KEY("Cat_id")
REFERENCES "Category" ("Cat_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Sub_Cat_id" FOREIGN KEY("Sub_Cat_id")
REFERENCES "Subcategory" ("Sub_Cat_id");

