-- Imported from Salesforce by salesforce_import.py.
-- Every statement is an upsert, so re-running updates rather than duplicating.

-- Blue Sage - Belton-DIS000221
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Blue Sage - Belton-DIS000221', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Blue Sage - Belton-DIS000221', 'Billing address', '17015-17017 Bel Ray Blvd, BELTON, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Blue Sage - Belton-DIS000221', 'Shipping address', '64012', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Blue Sage - Carthage-DIS000097
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Blue Sage - Carthage-DIS000097', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Blue Sage - Carthage-DIS000097', 'Billing address', '2929 The Loop, CARTHAGE, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Blue Sage - Carthage-DIS000097', 'Shipping address', '64836', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Blue Sage - Farmington-DIS000132
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Blue Sage - Farmington-DIS000132', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Blue Sage - Farmington-DIS000132', 'Billing address', '730 Market St, FARMINGTON, MO, 63640', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Blue Sage - Farmington-DIS000132', 'Shipping address', '730 Market St, FARMINGTON, MO, 63640', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Budd Dispensary-DIS000171
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Budd Dispensary-DIS000171', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Budd Dispensary-DIS000171', 'Billing address', '12077 N STATE HIGHWAY 5, SUNRISE BEACH, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Budd Dispensary-DIS000171', 'Shipping address', '65079', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Clovr Dispensary - Kansas City - Wornall-DIS000057
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Clovr Dispensary - Kansas City - Wornall-DIS000057', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Clovr Dispensary - Kansas City - Wornall-DIS000057', 'Billing address', '7130 Wornall Rd, Kansas City, MO, 64114', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO contacts (state, customer, name, title, email, phone, author) SELECT 'mo', 'Clovr Dispensary - Kansas City - Wornall-DIS000057', 'Rock Starling', 'Marketing', 'rockstarling@freshgreen.com', '', 'salesforce import' WHERE NOT EXISTS (SELECT 1 FROM contacts WHERE state = 'mo' AND customer = 'Clovr Dispensary - Kansas City - Wornall-DIS000057' AND name = 'Rock Starling');
INSERT INTO contacts (state, customer, name, title, email, phone, author) SELECT 'mo', 'Clovr Dispensary - Kansas City - Wornall-DIS000057', 'Olive (Fresh Green)', 'Manager', 'olive@freshgreen.com', '', 'salesforce import' WHERE NOT EXISTS (SELECT 1 FROM contacts WHERE state = 'mo' AND customer = 'Clovr Dispensary - Kansas City - Wornall-DIS000057' AND name = 'Olive (Fresh Green)');

-- Codes - Cape Girardeau-DIS000138
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Cape Girardeau-DIS000138', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Cape Girardeau-DIS000138', 'Billing address', '350 N KINGSHIGHWAY ST, CAPE GIRARDEAU, MO, 63701', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Cape Girardeau-DIS000138', 'Shipping address', '350 N KINGSHIGHWAY ST, CAPE GIRARDEAU, MO, 63701', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - Cardwell-DIS000216
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Cardwell-DIS000216', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Cardwell-DIS000216', 'Billing address', '3646 STATE HIGHWAY AC, CARDWELL, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Cardwell-DIS000216', 'Shipping address', '63829', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - Chillicothe-DIS000030
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Chillicothe-DIS000030', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Chillicothe-DIS000030', 'Billing address', '941 WASHINGTON ST, CHILLICOTHE, MO, 64601', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Chillicothe-DIS000030', 'Shipping address', '941 WASHINGTON ST, CHILLICOTHE, MO, 64601', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - Hannibal-DIS000022
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Hannibal-DIS000022', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Hannibal-DIS000022', 'Billing address', '2000 HIGHWAY 61 S, HANNIBAL, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Hannibal-DIS000022', 'Shipping address', '63401', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - Jackson-DIS000134
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Jackson-DIS000134', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Jackson-DIS000134', 'Billing address', '2421 E Jackson Boulevard, Jackson, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Jackson-DIS000134', 'Shipping address', '63755', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - Jefferson City-DIS000218
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Jefferson City-DIS000218', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Jefferson City-DIS000218', 'Billing address', '3205 MISSOURI BLVD, JEFFERSON CTY, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Jefferson City-DIS000218', 'Shipping address', '65109', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - Kansas City-DIS000214
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Kansas City-DIS000214', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Kansas City-DIS000214', 'Billing address', '668 E Red Bridge Road, Kansas City, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Kansas City-DIS000214', 'Shipping address', '64131', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - Kirksville now KC Barry Rd-DIS000040
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Kirksville now KC Barry Rd-DIS000040', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Kirksville now KC Barry Rd-DIS000040', 'Billing address', '120 S MAIN ST, KIRKSVILLE, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Kirksville now KC Barry Rd-DIS000040', 'Shipping address', '63501', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - Lake St. Louis-DIS000173
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Lake St. Louis-DIS000173', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Lake St. Louis-DIS000173', 'Billing address', '859 ROBERT RAYMOND DR, LAKE ST LOUIS, MO, 63367', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Lake St. Louis-DIS000173', 'Shipping address', '859 ROBERT RAYMOND DR, LAKE ST LOUIS, MO, 63367', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - Osage Beach-DIS000217
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Osage Beach-DIS000217', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Osage Beach-DIS000217', 'Billing address', '4805 Osage Beach Parkway, Osage Beach, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Osage Beach-DIS000217', 'Shipping address', '65065', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - Perryville-DIS000222
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Perryville-DIS000222', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Perryville-DIS000222', 'Billing address', '1201 Vincent Drive, Perryville, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Perryville-DIS000222', 'Shipping address', '63775', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - Raymore-DIS000170
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Raymore-DIS000170', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Raymore-DIS000170', 'Billing address', '1905 W FOXWOOD DR, RAYMORE, MO, 64083', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Raymore-DIS000170', 'Shipping address', '1905 W FOXWOOD DR, RAYMORE, MO, 64083', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - Sedalia-DIS000192
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Sedalia-DIS000192', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Sedalia-DIS000192', 'Billing address', '2004 West Broadway Blvd., Sedalia, MO, 65301', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Sedalia-DIS000192', 'Shipping address', '2004 West Broadway Blvd., Sedalia, MO, 65301', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - St. Louis (Hampton Ave)-DIS000058
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - St. Louis (Hampton Ave)-DIS000058', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - St. Louis (Hampton Ave)-DIS000058', 'Billing address', '10834 SAINT CHARLES ROCK RD, SAINT ANN, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - St. Louis (Hampton Ave)-DIS000058', 'Shipping address', '63074', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - St. Louis-DIS000119
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - St. Louis-DIS000119', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - St. Louis-DIS000119', 'Billing address', '11420 CONCORD VILLAGE AVE, SAINT LOUIS, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - St. Louis-DIS000119', 'Shipping address', '63123', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - Steele-DIS000226
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Steele-DIS000226', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Steele-DIS000226', 'Billing address', '321 State Hwy O, Steele, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Steele-DIS000226', 'Shipping address', '63877', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - Taylor-DIS000033
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Taylor-DIS000033', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Taylor-DIS000033', 'Billing address', '8760 Champions Drive, Taylor, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - Taylor-DIS000033', 'Shipping address', '63471', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - West Alton-DIS000184
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - West Alton-DIS000184', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - West Alton-DIS000184', 'Billing address', '124 Richard Drive, West Alton, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - West Alton-DIS000184', 'Shipping address', '63386', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Codes - West Plains-DIS000124
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - West Plains-DIS000124', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - West Plains-DIS000124', 'Billing address', '1636 BRUCE SMITH PKWY, WEST PLAINS, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Codes - West Plains-DIS000124', 'Shipping address', '65775', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Feel State - St. Louis-DIS000055
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Feel State - St. Louis-DIS000055', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Feel State - St. Louis-DIS000055', 'Billing address', '444 HOWDERSHELL RD, FLORISSANT, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Feel State - St. Louis-DIS000055', 'Shipping address', '63031', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Flora Farms - Hollister-DIS000223
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Flora Farms - Hollister-DIS000223', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Flora Farms - Hollister-DIS000223', 'Billing address', '165 Hollister Parkway, Hollister, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Flora Farms - Hollister-DIS000223', 'Shipping address', '65672', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Flora Farms - Ozark-DIS000090
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Flora Farms - Ozark-DIS000090', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Flora Farms - Ozark-DIS000090', 'Billing address', '1421 West Highway J, Ozark, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Flora Farms - Ozark-DIS000090', 'Shipping address', '65721', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Fresh Karma - Columbia-DIS000191
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Fresh Karma - Columbia-DIS000191', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Fresh Karma - Columbia-DIS000191', 'Billing address', '1407 Cinnamon Hill Lane, Columbia, MO, 65201', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Fresh Karma - Columbia-DIS000191', 'Shipping address', '1407 Cinnamon Hill Lane, Columbia, MO, 65201', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Fresh Karma - Warrensburg-DIS000229
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Fresh Karma - Warrensburg-DIS000229', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Fresh Karma - Warrensburg-DIS000229', 'Billing address', 'MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- From The Earth - Raytown-DIS000065
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'From The Earth - Raytown-DIS000065', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'From The Earth - Raytown-DIS000065', 'Billing address', '9010 E State Rte 350, Raytown, MO, 64133', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'From The Earth - Raytown-DIS000065', 'Shipping address', '9010 E State Rte 350, Raytown, MO, 64133', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- From The Earth - SW Blvd/Westside-DIS000048
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'From The Earth - SW Blvd/Westside-DIS000048', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'From The Earth - SW Blvd/Westside-DIS000048', 'Billing address', '2918 SOUTHWEST BLVD, KANSAS CITY, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'From The Earth - SW Blvd/Westside-DIS000048', 'Shipping address', '64108', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- GRD Columbia-DIS000160
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Columbia-DIS000160', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Columbia-DIS000160', 'Billing address', '204 E BROADWAY, COLUMBIA, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Columbia-DIS000160', 'Shipping address', '65203', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- GRD Lee's Summit-DIS000201
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Lee''s Summit-DIS000201', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Lee''s Summit-DIS000201', 'Billing address', '201 S. MO 291, Lee''s Summit, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Lee''s Summit-DIS000201', 'Shipping address', '64063', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- GRD Liberty-DIS000039
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Liberty-DIS000039', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Liberty-DIS000039', 'Billing address', '824 S 291 Highway, Liberty, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Liberty-DIS000039', 'Shipping address', '64068', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- GRD Moberly-DIS000188
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Moberly-DIS000188', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Moberly-DIS000188', 'Billing address', '412 W COATES ST, MOBERLY, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Moberly-DIS000188', 'Shipping address', '65270', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- GRD Nevada-DIS000163
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Nevada-DIS000163', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Nevada-DIS000163', 'Billing address', '2220 E AUSTIN BLVD, NEVADA, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Nevada-DIS000163', 'Shipping address', '64772', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- GRD Troy-DIS000154
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Troy-DIS000154', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Troy-DIS000154', 'Billing address', '109 N LINCOLN DR, TROY, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'GRD Troy-DIS000154', 'Shipping address', '63379', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm (Swade) - Ellisville-DIS000070
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm (Swade) - Ellisville-DIS000070', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm (Swade) - Ellisville-DIS000070', 'Billing address', '16051 MANCHESTER RD, ELLISVILLE, MO, 63011', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm (Swade) - Ellisville-DIS000070', 'Shipping address', '16051 MANCHESTER RD, ELLISVILLE, MO, 63011', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Arnold MO-DIS000123
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Arnold MO-DIS000123', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Arnold MO-DIS000123', 'Billing address', '2008 RICHARDSON RD, ARNOLD, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Arnold MO-DIS000123', 'Shipping address', '63010', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Boonville-DIS000212
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Boonville-DIS000212', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Boonville-DIS000212', 'Billing address', '319 E ASHLEY RD, BOONVILLE, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Boonville-DIS000212', 'Shipping address', '65233', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Broadway-DIS000031
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Broadway-DIS000031', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Broadway-DIS000031', 'Billing address', '1531 S BROADWAY, SAINT LOUIS, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Broadway-DIS000031', 'Shipping address', '63104', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Buffalo-DIS000198
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Buffalo-DIS000198', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Buffalo-DIS000198', 'Billing address', '513 S ASH ST, BUFFALO, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Buffalo-DIS000198', 'Shipping address', '65622', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Campbell-DIS000082
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Campbell-DIS000082', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Campbell-DIS000082', 'Billing address', '3903 S CAMPBELL AVE, SPRINGFIELD, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Campbell-DIS000082', 'Shipping address', '65807', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Cape Girardeau-DIS000137
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Cape Girardeau-DIS000137', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Cape Girardeau-DIS000137', 'Billing address', '1330 Broadway Street, Suite B, Cape Girardeau, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Cape Girardeau-DIS000137', 'Shipping address', '63701', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Caruthersville-DIS000219
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Caruthersville-DIS000219', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Caruthersville-DIS000219', 'Billing address', '3910 S. Ward Ave, Caruthersville, MO, 63830', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Caruthersville-DIS000219', 'Shipping address', '3910 S. Ward Ave, Caruthersville, MO, 63830', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Clayton-DIS000126
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Clayton-DIS000126', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Clayton-DIS000126', 'Billing address', '118 South Hanley Rd, Clayton, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Clayton-DIS000126', 'Shipping address', '63105', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Columbia Vandiver-DIS000189
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Columbia Vandiver-DIS000189', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Columbia Vandiver-DIS000189', 'Billing address', '812 VANDIVER DR, COLUMBIA, MO, 65202', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Columbia Vandiver-DIS000189', 'Shipping address', '812 VANDIVER DR, COLUMBIA, MO, 65202', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - E Sunshine-DIS000094
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - E Sunshine-DIS000094', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - E Sunshine-DIS000094', 'Billing address', '1510 E Sunshine St, SPRINGFIELD, MO, 65804', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - E Sunshine-DIS000094', 'Shipping address', '1510 E Sunshine St, SPRINGFIELD, MO, 65804', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Eagleville-DIS000213
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Eagleville-DIS000213', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Eagleville-DIS000213', 'Billing address', '20021 E STATE HWY N, EAGLEVILLE, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Eagleville-DIS000213', 'Shipping address', '64442', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Euclid-DIS000038
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Euclid-DIS000038', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Euclid-DIS000038', 'Billing address', '20 S EUCLID AVE, SAINT LOUIS, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Euclid-DIS000038', 'Shipping address', '63108', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Independence-DIS000054
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Independence-DIS000054', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Independence-DIS000054', 'Billing address', '16820 E US HIGHWAY 24, INDEPENDENCE, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Independence-DIS000054', 'Shipping address', '64056', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Joplin-DIS000084
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Joplin-DIS000084', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Joplin-DIS000084', 'Billing address', '2918 E 20TH ST, JOPLIN, MO, 64804', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Joplin-DIS000084', 'Shipping address', '2918 E 20TH ST, JOPLIN, MO, 64804', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Kansas City-DIS000067
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Kansas City-DIS000067', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Kansas City-DIS000067', 'Billing address', '10420 BLUE RIDGE BLVD, KANSAS CITY, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Kansas City-DIS000067', 'Shipping address', '64134', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Kennett-DIS000135
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Kennett-DIS000135', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Kennett-DIS000135', 'Billing address', '812 LESTER ST, KENNETT, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Kennett-DIS000135', 'Shipping address', '63857', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Mindenmines-DIS000156
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Mindenmines-DIS000156', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Mindenmines-DIS000156', 'Billing address', '1730 U.S. Hwy 160, Mindenmines, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Mindenmines-DIS000156', 'Shipping address', '64769', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - St. Charles-DIS000174
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - St. Charles-DIS000174', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - St. Charles-DIS000174', 'Billing address', 'MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - St. Charles-DIS000174', 'Shipping address', 'MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - St. Clair-DIS000179
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - St. Clair-DIS000179', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - St. Clair-DIS000179', 'Billing address', '1909 N SERVICE RD E, SAINT CLAIR, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - St. Clair-DIS000179', 'Shipping address', '63077', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm - Sunshine West-Springfield-DIS000096
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Sunshine West-Springfield-DIS000096', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Sunshine West-Springfield-DIS000096', 'Billing address', '3800 W SUNSHINE ST, SPRINGFIELD, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm - Sunshine West-Springfield-DIS000096', 'Shipping address', '65807', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm | Greenlight - Bannister-DIS000069
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Bannister-DIS000069', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Bannister-DIS000069', 'Billing address', '4900 East Bannister Road, KANSAS CITY, MO, 64132', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Bannister-DIS000069', 'Shipping address', '4900 East Bannister Road, KANSAS CITY, MO, 64132', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm | Greenlight - Branson-DIS000092
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Branson-DIS000092', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Branson-DIS000092', 'Billing address', '201 S WILDWOOD DR, BRANSON, MO, 65616', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Branson-DIS000092', 'Shipping address', '201 S WILDWOOD DR, BRANSON, MO, 65616', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm | Greenlight - Harrisonville-DIS000175
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Harrisonville-DIS000175', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Harrisonville-DIS000175', 'Billing address', '1408 N STATE ROUTE 291, HARRISONVILLE, MO, 64701', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Harrisonville-DIS000175', 'Shipping address', '1408 N STATE ROUTE 291, HARRISONVILLE, MO, 64701', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm | Greenlight - Independence-DIS000061
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Independence-DIS000061', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Independence-DIS000061', 'Billing address', '3721 S. Noland Road, Independence, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Independence-DIS000061', 'Shipping address', '64055', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm | Greenlight - Joplin-DIS000108
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Joplin-DIS000108', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Joplin-DIS000108', 'Billing address', '1729 E 7TH ST, JOPLIN, MO, 64801', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Joplin-DIS000108', 'Shipping address', '1729 E 7TH ST, JOPLIN, MO, 64801', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm | Greenlight - Noel-DIS000227
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Noel-DIS000227', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Noel-DIS000227', 'Billing address', 'MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm | Greenlight - Rock Port-DIS000224
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Rock Port-DIS000224', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Rock Port-DIS000224', 'Billing address', '105 SPEEDYS DR, ROCK PORT, MO, 64482', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Rock Port-DIS000224', 'Shipping address', '105 SPEEDYS DR, ROCK PORT, MO, 64482', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm | Greenlight - Springfield-DIS000107
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Springfield-DIS000107', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Springfield-DIS000107', 'Billing address', '218 N. National Avenue, SPRINGFIELD, MO, 65802', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Springfield-DIS000107', 'Shipping address', '218 N. National Avenue, SPRINGFIELD, MO, 65802', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm | Greenlight - Stateline-DIS000063
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Stateline-DIS000063', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Stateline-DIS000063', 'Billing address', '13531 Madison Avenue, Kansas City, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Stateline-DIS000063', 'Shipping address', '64145', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Good Day Farm | Greenlight - Ward Parkway-DIS000225
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Ward Parkway-DIS000225', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Ward Parkway-DIS000225', 'Billing address', '8500 Ward Parkway, KANSAS CITY, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Good Day Farm | Greenlight - Ward Parkway-DIS000225', 'Shipping address', '64114', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Heartland Greenway, LLC dba The Dispensary-DIS000093
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Heartland Greenway, LLC dba The Dispensary-DIS000093', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Heartland Greenway, LLC dba The Dispensary-DIS000093', 'Billing address', '15335 State Hwy 76, CASSVILLE, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Heartland Greenway, LLC dba The Dispensary-DIS000093', 'Shipping address', '65625', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Hi-Pointe - St. Louis-DIS000210
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Hi-Pointe - St. Louis-DIS000210', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Hi-Pointe - St. Louis-DIS000210', 'Billing address', '1015 MCCAUSLAND AVE, SAINT LOUIS, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Hi-Pointe - St. Louis-DIS000210', 'Shipping address', '63117', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- High Profile - Branson-DIS000211
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'High Profile - Branson-DIS000211', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'High Profile - Branson-DIS000211', 'Billing address', '3125 Green Mountain Drive, Branson, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'High Profile - Branson-DIS000211', 'Shipping address', '65616', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- High Profile - Columbia-DIS000182
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'High Profile - Columbia-DIS000182', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'High Profile - Columbia-DIS000182', 'Billing address', '1500 INTERSTATE 70 DR SW, COLUMBIA, MO, 65203', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'High Profile - Columbia-DIS000182', 'Shipping address', '1500 INTERSTATE 70 DR SW, COLUMBIA, MO, 65203', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- High Profile - Pineville-DIS000101
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'High Profile - Pineville-DIS000101', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'High Profile - Pineville-DIS000101', 'Billing address', '35 Macadoodle Lane, Pineville, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'High Profile - Pineville-DIS000101', 'Shipping address', '64856', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- High Profile - St Louis/Sunset Hills-DIS000103
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'High Profile - St Louis/Sunset Hills-DIS000103', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'High Profile - St Louis/Sunset Hills-DIS000103', 'Billing address', '10425 WATSON RD, St. Louis, MO, 63127', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'High Profile - St Louis/Sunset Hills-DIS000103', 'Shipping address', '10425 WATSON RD, St. Louis, MO, 63127', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- High Profile - St. Charles-DIS000100
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'High Profile - St. Charles-DIS000100', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'High Profile - St. Charles-DIS000100', 'Billing address', '1416 HARVESTOWNE INDUSTRIAL DR, SAINT CHARLES, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'High Profile - St. Charles-DIS000100', 'Shipping address', '63304', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Hippos Chesterfield-DIS000129
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Hippos Chesterfield-DIS000129', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Hippos Chesterfield-DIS000129', 'Billing address', '17409 CHESTERFIELD AIRPORT RD, CHESTERFIELD, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Hippos Chesterfield-DIS000129', 'Shipping address', '63005', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Hippos Springfield-DIS000087
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Hippos Springfield-DIS000087', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Hippos Springfield-DIS000087', 'Billing address', '2868 S GLENSTONE AVE, SPRINGFIELD, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Hippos Springfield-DIS000087', 'Shipping address', '65804', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Key Cannabis - Belton-DIS000180
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Belton-DIS000180', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Belton-DIS000180', 'Billing address', '225 N CEDAR DR, BELTON, MO, 64012', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Belton-DIS000180', 'Shipping address', '225 N CEDAR DR, BELTON, MO, 64012', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Key Cannabis - Cameron-DIS000007
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Cameron-DIS000007', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Cameron-DIS000007', 'Billing address', '121 S. Walnut Street, Cameron, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Cameron-DIS000007', 'Shipping address', '64429', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Key Cannabis - Cottleville-DIS000200
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Cottleville-DIS000200', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Cottleville-DIS000200', 'Billing address', '4730 Mid Rivers Mall Drive, Cottleville, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Cottleville-DIS000200', 'Shipping address', '63376', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Key Cannabis - Desloge-DIS000125
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Desloge-DIS000125', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Desloge-DIS000125', 'Billing address', '803 W SCENIC RIVERS BLVD STE A, SALEM, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Desloge-DIS000125', 'Shipping address', '65560', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Key Cannabis - Kansas City_Front St-DIS000078
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Kansas City_Front St-DIS000078', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Kansas City_Front St-DIS000078', 'Billing address', '6820 E FRONT ST, KANSAS CITY, MO, 64120', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Kansas City_Front St-DIS000078', 'Shipping address', '6820 E FRONT ST, KANSAS CITY, MO, 64120', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Key Cannabis - Kansas City_Prospect Ave-DIS000050
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Kansas City_Prospect Ave-DIS000050', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Kansas City_Prospect Ave-DIS000050', 'Billing address', '7025 Prospect Ave, Kansas City, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Kansas City_Prospect Ave-DIS000050', 'Shipping address', '64132', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Key Cannabis - Kansas City_Vivion Rd-DIS000204
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Kansas City_Vivion Rd-DIS000204', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Kansas City_Vivion Rd-DIS000204', 'Billing address', '4716 NE VIVION RD, KANSAS CITY, MO, 64119', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Kansas City_Vivion Rd-DIS000204', 'Shipping address', '4716 NE VIVION RD, KANSAS CITY, MO, 64119', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Key Cannabis - Kirksville-DIS000024
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Kirksville-DIS000024', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Kirksville-DIS000024', 'Billing address', '400 N BALTIMORE ST, KIRKSVILLE, MO, 63501', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Kirksville-DIS000024', 'Shipping address', '400 N BALTIMORE ST, KIRKSVILLE, MO, 63501', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Key Cannabis - Nixa-DIS000099
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Nixa-DIS000099', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Nixa-DIS000099', 'Billing address', '202 WEST ST, NIXA, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Nixa-DIS000099', 'Shipping address', '65714', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Key Cannabis - Richmond Heights-DIS000114
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Richmond Heights-DIS000114', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Richmond Heights-DIS000114', 'Billing address', '1026 Brentwood Blvd, Richmond Heights, MO, 63117', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Richmond Heights-DIS000114', 'Shipping address', '1026 Brentwood Blvd, Richmond Heights, MO, 63117', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Key Cannabis - Rolla-DIS000127
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Rolla-DIS000127', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Rolla-DIS000127', 'Billing address', '1421 FORUM DR, ROLLA, MO, 65401', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Rolla-DIS000127', 'Shipping address', '1421 FORUM DR, ROLLA, MO, 65401', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Key Cannabis - Springfield-DIS000102
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Springfield-DIS000102', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Springfield-DIS000102', 'Billing address', '751 S GLENSTONE AVE, SPRINGFIELD, MO, 65802', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - Springfield-DIS000102', 'Shipping address', '751 S GLENSTONE AVE, SPRINGFIELD, MO, 65802', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Key Cannabis - St Charles-DIS000064
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - St Charles-DIS000064', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - St Charles-DIS000064', 'Billing address', '6700-6704 Highway N, O''FALLON, MO, 63304', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - St Charles-DIS000064', 'Shipping address', '6700-6704 Highway N, O''FALLON, MO, 63304', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Key Cannabis - St. James-DIS000133
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - St. James-DIS000133', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - St. James-DIS000133', 'Billing address', '205 STATE ROUTE B, SAINT JAMES, MO, 65559', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis - St. James-DIS000133', 'Shipping address', '205 STATE ROUTE B, SAINT JAMES, MO, 65559', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Key Cannabis Elevate - Cape Girardeau-DIS000111
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis Elevate - Cape Girardeau-DIS000111', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis Elevate - Cape Girardeau-DIS000111', 'Billing address', '25 S Kingshighway, CAPE GIRARDEAU, MO, 63703', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Key Cannabis Elevate - Cape Girardeau-DIS000111', 'Shipping address', '25 S Kingshighway, CAPE GIRARDEAU, MO, 63703', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Kind Goods - Fenton-DIS000142
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods - Fenton-DIS000142', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods - Fenton-DIS000142', 'Billing address', '180 GRAVOIS BLUFFS CIR, FENTON, MO, 63026', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods - Fenton-DIS000142', 'Shipping address', '180 GRAVOIS BLUFFS CIR, FENTON, MO, 63026', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Kind Goods - Manchester-DIS000193
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods - Manchester-DIS000193', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods - Manchester-DIS000193', 'Billing address', '14173 MANCHESTER RD, MANCHESTER, MO, 63011', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods - Manchester-DIS000193', 'Shipping address', '14173 MANCHESTER RD, MANCHESTER, MO, 63011', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Kind Goods - Soulard-DIS000206
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods - Soulard-DIS000206', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods - Soulard-DIS000206', 'Billing address', '1631 S BROADWAY, SAINT LOUIS, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods - Soulard-DIS000206', 'Shipping address', '63104', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Kind Goods - St Peters-DIS000159
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods - St Peters-DIS000159', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods - St Peters-DIS000159', 'Billing address', '3899 VETERANS MEMORIAL PKWY, SAINT PETERS, MO, 63376', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods - St Peters-DIS000159', 'Shipping address', '3899 VETERANS MEMORIAL PKWY, SAINT PETERS, MO, 63376', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Kind Goods - The Hill-DIS000052
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods - The Hill-DIS000052', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods - The Hill-DIS000052', 'Billing address', '2652 HAMPTON AVE, SAINT LOUIS, MO, 63139', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods - The Hill-DIS000052', 'Shipping address', '2652 HAMPTON AVE, SAINT LOUIS, MO, 63139', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Kind Goods-Maryland Heights-DIS000041
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods-Maryland Heights-DIS000041', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Kind Goods-Maryland Heights-DIS000041', 'Billing address', 'MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Latitude Dispensary - Osage Beach-DIS000164
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Latitude Dispensary - Osage Beach-DIS000164', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Latitude Dispensary - Osage Beach-DIS000164', 'Billing address', '6396 Osage Beach Pkwy, Osage Beach, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Latitude Dispensary - Osage Beach-DIS000164', 'Shipping address', '65079', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Local Cannabis Company-DIS000074
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Local Cannabis Company-DIS000074', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Local Cannabis Company-DIS000074', 'Billing address', '1004 W 45th St, KANSAS CITY, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Local Cannabis Company-DIS000074', 'Shipping address', '64111', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Luxury Leaf Dispensary-DIS000060
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Luxury Leaf Dispensary-DIS000060', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Luxury Leaf Dispensary-DIS000060', 'Billing address', '1463 S VANDEVENTER AVE, SAINT LOUIS, MO, 63110', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Luxury Leaf Dispensary-DIS000060', 'Shipping address', '1463 S VANDEVENTER AVE, SAINT LOUIS, MO, 63110', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- MOHW - Jeff City-DIS000147
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'MOHW - Jeff City-DIS000147', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'MOHW - Jeff City-DIS000147', 'Billing address', '1404 MISSOURI BLVD, JEFFERSON CTY, MO, 65109', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'MOHW - Jeff City-DIS000147', 'Shipping address', '1404 MISSOURI BLVD, JEFFERSON CTY, MO, 65109', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- MOHW - Kirksville-DIS000006
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'MOHW - Kirksville-DIS000006', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'MOHW - Kirksville-DIS000006', 'Billing address', '215 E CHARLES ST, KIRKSVILLE, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'MOHW - Kirksville-DIS000006', 'Shipping address', '63501', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- MOHW - Washington-DIS000145
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'MOHW - Washington-DIS000145', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'MOHW - Washington-DIS000145', 'Billing address', '901 E. First Street, WASHINGTON, MO, 63090', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'MOHW - Washington-DIS000145', 'Shipping address', '901 E. First Street, WASHINGTON, MO, 63090', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Missouri Wild Alchemy-DIS000176
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Missouri Wild Alchemy-DIS000176', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Missouri Wild Alchemy-DIS000176', 'Billing address', '2173 W TERRA LN, O FALLON, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Missouri Wild Alchemy-DIS000176', 'Shipping address', '63366', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Nature Med MO - Gladstone-DIS000056
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Nature Med MO - Gladstone-DIS000056', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Nature Med MO - Gladstone-DIS000056', 'Billing address', '207 NE 72ND ST, GLADSTONE, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Nature Med MO - Gladstone-DIS000056', 'Shipping address', '64118', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Nature Med MO - Independence-DIS000059
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Nature Med MO - Independence-DIS000059', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Nature Med MO - Independence-DIS000059', 'Billing address', '15823 E US HIGHWAY 24, INDEPENDENCE, MO, 64050', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Nature Med MO - Independence-DIS000059', 'Shipping address', '15823 E US HIGHWAY 24, INDEPENDENCE, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Nature Med MO - Kansas City-DIS000072
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Nature Med MO - Kansas City-DIS000072', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Nature Med MO - Kansas City-DIS000072', 'Billing address', '2631 NE VIVION RD, KANSAS CITY, MO, 64119', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Nature Med MO - Kansas City-DIS000072', 'Shipping address', '2631 NE VIVION RD, KANSAS CITY, MO, 64119', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Nature Med MO - Kingston-DIS000088
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Nature Med MO - Kingston-DIS000088', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Nature Med MO - Kingston-DIS000088', 'Billing address', '234 KINGSTON DR, SAINT LOUIS, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Nature Med MO - Kingston-DIS000088', 'Shipping address', '63125', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Nature Med MO - O'Fallon-DIS000152
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Nature Med MO - O''Fallon-DIS000152', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Nature Med MO - O''Fallon-DIS000152', 'Billing address', '1193 Bryan Road, O FALLON, MO, 63366', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Nature Med MO - O''Fallon-DIS000152', 'Shipping address', '1193 Bryan Road, O FALLON, MO, 63366', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- North Dispensary - Hillsboro-DIS000136
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'North Dispensary - Hillsboro-DIS000136', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'North Dispensary - Hillsboro-DIS000136', 'Billing address', '929 PEACHTREE PLAZA DR, HILLSBORO, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'North Dispensary - Hillsboro-DIS000136', 'Shipping address', '63050', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- North Dispensary - Pevely-DIS000165
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'North Dispensary - Pevely-DIS000165', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'North Dispensary - Pevely-DIS000165', 'Billing address', '1709 State Hwy Z, Pevely, MO, 63070', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'North Dispensary - Pevely-DIS000165', 'Shipping address', '1709 State Hwy Z, Pevely, MO, 63070', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Proper Cannabis (N'Bliss I) - Festus West-DIS000116
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis (N''Bliss I) - Festus West-DIS000116', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis (N''Bliss I) - Festus West-DIS000116', 'Billing address', '2285 US HIGHWAY 67, FESTUS, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis (N''Bliss I) - Festus West-DIS000116', 'Shipping address', '63028', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Proper Cannabis (N'Bliss II) - Kirkwood Manchester-DIS000073
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis (N''Bliss II) - Kirkwood Manchester-DIS000073', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis (N''Bliss II) - Kirkwood Manchester-DIS000073', 'Billing address', '10855 Manchester Rd, Kirkwood, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis (N''Bliss II) - Kirkwood Manchester-DIS000073', 'Shipping address', '63122', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Proper Cannabis (N'Bliss III) - House Springs-DIS000149
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis (N''Bliss III) - House Springs-DIS000149', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis (N''Bliss III) - House Springs-DIS000149', 'Billing address', '3 WALTERS PL, HOUSE SPRINGS, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis (N''Bliss III) - House Springs-DIS000149', 'Shipping address', '63051', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Proper Cannabis (N'Bliss V) - Ellisville-DIS000066
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis (N''Bliss V) - Ellisville-DIS000066', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis (N''Bliss V) - Ellisville-DIS000066', 'Billing address', '15396-15398 MANCHESTER RD, ELLISVILLE, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis (N''Bliss V) - Ellisville-DIS000066', 'Shipping address', '63011', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Proper Cannabis (Starbuds) - Festus East-DIS000131
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis (Starbuds) - Festus East-DIS000131', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis (Starbuds) - Festus East-DIS000131', 'Billing address', '1168 W GANNON DR, FESTUS, MO, 63028', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis (Starbuds) - Festus East-DIS000131', 'Shipping address', '1168 W GANNON DR, FESTUS, MO, 63028', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Proper Cannabis - Bridgeton-DIS000208
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - Bridgeton-DIS000208', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - Bridgeton-DIS000208', 'Billing address', '12430 St. Charles Rock Road, Bridgeton, MO, 63044', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - Bridgeton-DIS000208', 'Shipping address', '12430 St. Charles Rock Road, Bridgeton, MO, 63044', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Proper Cannabis - Crestwood-DIS000086
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - Crestwood-DIS000086', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - Crestwood-DIS000086', 'Billing address', '9933 WATSON RD, SAINT LOUIS, MO, 63126', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - Crestwood-DIS000086', 'Shipping address', '9933 WATSON RD, SAINT LOUIS, MO, 63126', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Proper Cannabis - KC-DIS000053
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - KC-DIS000053', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - KC-DIS000053', 'Billing address', '1421 WABASH AVE, KANSAS CITY, MO, 64127', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - KC-DIS000053', 'Shipping address', '1421 WABASH AVE, KANSAS CITY, MO, 64127', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Proper Cannabis - STL-DIS000112
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - STL-DIS000112', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - STL-DIS000112', 'Billing address', '7417 S LINDBERGH BLVD, SAINT LOUIS, MO, 63125', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - STL-DIS000112', 'Shipping address', '7417 S LINDBERGH BLVD, SAINT LOUIS, MO, 63125', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Proper Cannabis - University City (Starbuds)-DIS000047
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - University City (Starbuds)-DIS000047', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - University City (Starbuds)-DIS000047', 'Billing address', '7555 OLIVE BLVD, UNIVERSITY CY, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - University City (Starbuds)-DIS000047', 'Shipping address', '63130', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO contacts (state, customer, name, title, email, phone, author) SELECT 'mo', 'Proper Cannabis - University City (Starbuds)-DIS000047', 'Kate Ransom', 'VP, Marketing', 'kransom@propberbrands.com', '562-217-9338', 'salesforce import' WHERE NOT EXISTS (SELECT 1 FROM contacts WHERE state = 'mo' AND customer = 'Proper Cannabis - University City (Starbuds)-DIS000047' AND name = 'Kate Ransom');

-- Proper Cannabis - Warrenton-DIS000158
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - Warrenton-DIS000158', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Proper Cannabis - Warrenton-DIS000158', 'Billing address', '711 N State Highway 47, Warrenton, Missouri, 63383', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Riverside Wellness-DIS000019
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Riverside Wellness-DIS000019', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Riverside Wellness-DIS000019', 'Billing address', '4403 NW GATEWAY AVE, RIVERSIDE, MO, 64150', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Riverside Wellness-DIS000019', 'Shipping address', '4403 NW GATEWAY AVE, RIVERSIDE, MO, 64150', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Shangri-La Columbia South, LLC-DIS000172
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Shangri-La Columbia South, LLC-DIS000172', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Shangri-La Columbia South, LLC-DIS000172', 'Billing address', '3919 PEACHTREE DR, COLUMBIA, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Shangri-La Columbia South, LLC-DIS000172', 'Shipping address', '65203', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Shangri-La Columbia, LLC-DIS000167
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Shangri-La Columbia, LLC-DIS000167', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Shangri-La Columbia, LLC-DIS000167', 'Billing address', '1401 CREEKWOOD PKWY, COLUMBIA, MO, 65202', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Shangri-La Columbia, LLC-DIS000167', 'Shipping address', '1401 CREEKWOOD PKWY, COLUMBIA, MO, 65202', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Shangri-La Jefferson, LLC-DIS000162
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Shangri-La Jefferson, LLC-DIS000162', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Shangri-La Jefferson, LLC-DIS000162', 'Billing address', '2118 MISSOURI BLVD, JEFFERSON CTY, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Shangri-La Jefferson, LLC-DIS000162', 'Shipping address', '65109', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Sunrise - Clinton-DIS000186
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Sunrise - Clinton-DIS000186', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Sunrise - Clinton-DIS000186', 'Billing address', '2750 NW 7 Highway, Clinton, MO, 64735', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Sunrise - Clinton-DIS000186', 'Shipping address', '2750 NW 7 Highway, Clinton, MO, 64735', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Sunrise - Kansas City-DIS000014
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Sunrise - Kansas City-DIS000014', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Sunrise - Kansas City-DIS000014', 'Billing address', '6510 NW Pairieview, Kansas City, MO, 64151', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Sunrise - Kansas City-DIS000014', 'Shipping address', '6510 NW Pairieview, Kansas City, MO, 64151', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Sunrise - Maryville-DIS000032
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Sunrise - Maryville-DIS000032', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Sunrise - Maryville-DIS000032', 'Billing address', '2316 S. Main St, Maryville, MO, 64468', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Sunrise - Maryville-DIS000032', 'Shipping address', '2316 S. Main St, Maryville, MO, 64468', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Terrabis - Creve Coeur-DIS000117
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Terrabis - Creve Coeur-DIS000117', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Terrabis - Creve Coeur-DIS000117', 'Billing address', '11062 OLIVE BLVD, CREVE COEUR, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Terrabis - Creve Coeur-DIS000117', 'Shipping address', '63141', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Terrabis - O'Fallon-DIS000155
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Terrabis - O''Fallon-DIS000155', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Terrabis - O''Fallon-DIS000155', 'Billing address', '1172 W TERRA LN, O FALLON, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Terrabis - O''Fallon-DIS000155', 'Shipping address', '63366', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Terrabis - Springfield-DIS000104
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Terrabis - Springfield-DIS000104', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Terrabis - Springfield-DIS000104', 'Billing address', '850 E KEARNEY ST, SPRINGFIELD, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Terrabis - Springfield-DIS000104', 'Shipping address', '65803', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- The Mint-DIS000161
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'The Mint-DIS000161', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'The Mint-DIS000161', 'Billing address', '150 MID RIVERS MALL CIR, SAINT PETERS, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'The Mint-DIS000161', 'Shipping address', '63376', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Vertical Enterprise-DIS000011
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Vertical Enterprise-DIS000011', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Vertical Enterprise-DIS000011', 'Billing address', '908 North Belt Highway, SAINT JOSEPH, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Vertical Enterprise-DIS000011', 'Shipping address', '64506', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Verts Neighborhood Dispensary-Dexter-DIS000128
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Verts Neighborhood Dispensary-Dexter-DIS000128', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Verts Neighborhood Dispensary-Dexter-DIS000128', 'Billing address', '1803 W Business US 60, Dexter, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Verts Neighborhood Dispensary-Dexter-DIS000128', 'Shipping address', '63841', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Verts Neighborhood Dispensary-Joplin-DIS000091
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Verts Neighborhood Dispensary-Joplin-DIS000091', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Verts Neighborhood Dispensary-Joplin-DIS000091', 'Billing address', '25733 Fir Rd, Joplin, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Verts Neighborhood Dispensary-Joplin-DIS000091', 'Shipping address', '64801', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Verts Neighborhood Dispensary-Kansas City-DIS000017
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Verts Neighborhood Dispensary-Kansas City-DIS000017', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Verts Neighborhood Dispensary-Kansas City-DIS000017', 'Billing address', '8606 N Church Rd, Kansas City, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Verts Neighborhood Dispensary-Kansas City-DIS000017', 'Shipping address', '64157', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Verts Neighborhood Dispensary-Pacific-DIS000181
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Verts Neighborhood Dispensary-Pacific-DIS000181', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Verts Neighborhood Dispensary-Pacific-DIS000181', 'Billing address', '1340 Thorton St, Pacific, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Verts Neighborhood Dispensary-Pacific-DIS000181', 'Shipping address', '63069', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;

-- Viola- Olive St-DIS000043
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Viola- Olive St-DIS000043', 'Identity', '', 'header', '', 'salesforce import') ON CONFLICT(state, customer, label) DO NOTHING;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Viola- Olive St-DIS000043', 'Billing address', '2001 OLIVE ST, SAINT LOUIS, MO', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
INSERT INTO details (state, customer, label, value, kind, section, author) VALUES ('mo', 'Viola- Olive St-DIS000043', 'Shipping address', '63103', 'field', 'Identity', 'salesforce import') ON CONFLICT(state, customer, label) DO UPDATE SET value = excluded.value, section = excluded.section;
