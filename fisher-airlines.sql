PGDMP     3                     u           fisher-airlines    9.6.2    9.6.2 K    �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �	           1262    32777    fisher-airlines    DATABASE     o   CREATE DATABASE "fisher-airlines" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
 !   DROP DATABASE "fisher-airlines";
             fisher-user    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12655    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    32870    AspNetRoleClaims    TABLE     �   CREATE TABLE "AspNetRoleClaims" (
    "Id" integer NOT NULL,
    "ClaimType" text,
    "ClaimValue" text,
    "RoleId" text NOT NULL
);
 &   DROP TABLE public."AspNetRoleClaims";
       public         fisher-user    false    3            �            1259    32914    AspNetRoleClaims_Id_seq    SEQUENCE     {   CREATE SEQUENCE "AspNetRoleClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."AspNetRoleClaims_Id_seq";
       public       fisher-user    false    195    3            �	           0    0    AspNetRoleClaims_Id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "AspNetRoleClaims_Id_seq" OWNED BY "AspNetRoleClaims"."Id";
            public       fisher-user    false    198            �            1259    32815    AspNetRoles    TABLE     �   CREATE TABLE "AspNetRoles" (
    "Id" text NOT NULL,
    "ConcurrencyStamp" text,
    "Name" character varying(256),
    "NormalizedName" character varying(256)
);
 !   DROP TABLE public."AspNetRoles";
       public         fisher-user    false    3            �            1259    32831    AspNetUserClaims    TABLE     �   CREATE TABLE "AspNetUserClaims" (
    "Id" integer NOT NULL,
    "ClaimType" text,
    "ClaimValue" text,
    "UserId" text NOT NULL
);
 &   DROP TABLE public."AspNetUserClaims";
       public         fisher-user    false    3            �            1259    32909    AspNetUserClaims_Id_seq    SEQUENCE     {   CREATE SEQUENCE "AspNetUserClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."AspNetUserClaims_Id_seq";
       public       fisher-user    false    192    3            �	           0    0    AspNetUserClaims_Id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "AspNetUserClaims_Id_seq" OWNED BY "AspNetUserClaims"."Id";
            public       fisher-user    false    197            �            1259    32844    AspNetUserLogins    TABLE     �   CREATE TABLE "AspNetUserLogins" (
    "LoginProvider" text NOT NULL,
    "ProviderKey" text NOT NULL,
    "ProviderDisplayName" text,
    "UserId" text NOT NULL
);
 &   DROP TABLE public."AspNetUserLogins";
       public         fisher-user    false    3            �            1259    32883    AspNetUserRoles    TABLE     [   CREATE TABLE "AspNetUserRoles" (
    "UserId" text NOT NULL,
    "RoleId" text NOT NULL
);
 %   DROP TABLE public."AspNetUserRoles";
       public         fisher-user    false    3            �            1259    32823    AspNetUserTokens    TABLE     �   CREATE TABLE "AspNetUserTokens" (
    "UserId" text NOT NULL,
    "LoginProvider" text NOT NULL,
    "Name" text NOT NULL,
    "Value" text
);
 &   DROP TABLE public."AspNetUserTokens";
       public         fisher-user    false    3            �            1259    32791    AspNetUsers    TABLE     B  CREATE TABLE "AspNetUsers" (
    "Id" text NOT NULL,
    "AccessFailedCount" integer NOT NULL,
    "ConcurrencyStamp" text,
    "Email" character varying(256),
    "EmailConfirmed" boolean NOT NULL,
    "LockoutEnabled" boolean NOT NULL,
    "LockoutEnd" timestamp with time zone,
    "NormalizedEmail" character varying(256),
    "NormalizedUserName" character varying(256),
    "PasswordHash" text,
    "PhoneNumber" text,
    "PhoneNumberConfirmed" boolean NOT NULL,
    "SecurityStamp" text,
    "TwoFactorEnabled" boolean NOT NULL,
    "UserName" character varying(256)
);
 !   DROP TABLE public."AspNetUsers";
       public         fisher-user    false    3            �            1259    32799    Bookings    TABLE     �  CREATE TABLE "Bookings" (
    "ConfirmationNumber" integer NOT NULL,
    "Passengers" integer NOT NULL,
    "Username" text,
    "ArrivalTime" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL,
    "DepartDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL,
    "Departure" text,
    "Destination" text,
    "Id" integer DEFAULT 0 NOT NULL,
    "Price" integer DEFAULT 0 NOT NULL
);
    DROP TABLE public."Bookings";
       public         fisher-user    false    3            �            1259    32929    Bookings_ConfirmationNumber_seq    SEQUENCE     �   CREATE SEQUENCE "Bookings_ConfirmationNumber_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Bookings_ConfirmationNumber_seq";
       public       fisher-user    false    188    3            �	           0    0    Bookings_ConfirmationNumber_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE "Bookings_ConfirmationNumber_seq" OWNED BY "Bookings"."ConfirmationNumber";
            public       fisher-user    false    201            �            1259    32857    Flight    TABLE       CREATE TABLE "Flight" (
    "Id" integer NOT NULL,
    "ArrivalTime" timestamp without time zone NOT NULL,
    "AvailableSeats" integer NOT NULL,
    "DepartDate" timestamp without time zone NOT NULL,
    "Departure" text,
    "Destination" text,
    "Price" integer NOT NULL
);
    DROP TABLE public."Flight";
       public         fisher-user    false    3            �            1259    32807    FlightStatus    TABLE     �   CREATE TABLE "FlightStatus" (
    "FlightId" integer NOT NULL,
    "ArrivalTime" timestamp without time zone NOT NULL,
    "DepartDate" timestamp without time zone NOT NULL,
    "Departure" text,
    "Destination" text,
    "Status" text
);
 "   DROP TABLE public."FlightStatus";
       public         fisher-user    false    3            �            1259    32919    FlightStatus_FlightId_seq    SEQUENCE     }   CREATE SEQUENCE "FlightStatus_FlightId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."FlightStatus_FlightId_seq";
       public       fisher-user    false    189    3            �	           0    0    FlightStatus_FlightId_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE "FlightStatus_FlightId_seq" OWNED BY "FlightStatus"."FlightId";
            public       fisher-user    false    199            �            1259    32924    Flight_Id_seq    SEQUENCE     q   CREATE SEQUENCE "Flight_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Flight_Id_seq";
       public       fisher-user    false    3    194            �	           0    0    Flight_Id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE "Flight_Id_seq" OWNED BY "Flight"."Id";
            public       fisher-user    false    200            �            1259    32783    Flights    TABLE     (  CREATE TABLE "Flights" (
    "Id" integer NOT NULL,
    "DepartDate" timestamp without time zone NOT NULL,
    "Destination" text,
    "FlightType" boolean NOT NULL,
    "Passengers" integer NOT NULL,
    "ReturnDate" timestamp without time zone NOT NULL,
    "Source" text,
    "Status" text
);
    DROP TABLE public."Flights";
       public         fisher-user    false    3            �            1259    32778    __EFMigrationsHistory    TABLE     �   CREATE TABLE "__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);
 +   DROP TABLE public."__EFMigrationsHistory";
       public         fisher-user    false    3            "	           2604    32918    AspNetRoleClaims Id    DEFAULT     r   ALTER TABLE ONLY "AspNetRoleClaims" ALTER COLUMN "Id" SET DEFAULT nextval('"AspNetRoleClaims_Id_seq"'::regclass);
 F   ALTER TABLE public."AspNetRoleClaims" ALTER COLUMN "Id" DROP DEFAULT;
       public       fisher-user    false    198    195             	           2604    32913    AspNetUserClaims Id    DEFAULT     r   ALTER TABLE ONLY "AspNetUserClaims" ALTER COLUMN "Id" SET DEFAULT nextval('"AspNetUserClaims_Id_seq"'::regclass);
 F   ALTER TABLE public."AspNetUserClaims" ALTER COLUMN "Id" DROP DEFAULT;
       public       fisher-user    false    197    192            	           2604    32933    Bookings ConfirmationNumber    DEFAULT     �   ALTER TABLE ONLY "Bookings" ALTER COLUMN "ConfirmationNumber" SET DEFAULT nextval('"Bookings_ConfirmationNumber_seq"'::regclass);
 N   ALTER TABLE public."Bookings" ALTER COLUMN "ConfirmationNumber" DROP DEFAULT;
       public       fisher-user    false    201    188            !	           2604    32928 	   Flight Id    DEFAULT     ^   ALTER TABLE ONLY "Flight" ALTER COLUMN "Id" SET DEFAULT nextval('"Flight_Id_seq"'::regclass);
 <   ALTER TABLE public."Flight" ALTER COLUMN "Id" DROP DEFAULT;
       public       fisher-user    false    200    194            	           2604    32923    FlightStatus FlightId    DEFAULT     v   ALTER TABLE ONLY "FlightStatus" ALTER COLUMN "FlightId" SET DEFAULT nextval('"FlightStatus_FlightId_seq"'::regclass);
 H   ALTER TABLE public."FlightStatus" ALTER COLUMN "FlightId" DROP DEFAULT;
       public       fisher-user    false    199    189            �	          0    32870    AspNetRoleClaims 
   TABLE DATA               P   COPY "AspNetRoleClaims" ("Id", "ClaimType", "ClaimValue", "RoleId") FROM stdin;
    public       fisher-user    false    195   �[       �	           0    0    AspNetRoleClaims_Id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"AspNetRoleClaims_Id_seq"', 1, false);
            public       fisher-user    false    198            �	          0    32815    AspNetRoles 
   TABLE DATA               T   COPY "AspNetRoles" ("Id", "ConcurrencyStamp", "Name", "NormalizedName") FROM stdin;
    public       fisher-user    false    190   �[       �	          0    32831    AspNetUserClaims 
   TABLE DATA               P   COPY "AspNetUserClaims" ("Id", "ClaimType", "ClaimValue", "UserId") FROM stdin;
    public       fisher-user    false    192   ~\       �	           0    0    AspNetUserClaims_Id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"AspNetUserClaims_Id_seq"', 1, false);
            public       fisher-user    false    197            �	          0    32844    AspNetUserLogins 
   TABLE DATA               f   COPY "AspNetUserLogins" ("LoginProvider", "ProviderKey", "ProviderDisplayName", "UserId") FROM stdin;
    public       fisher-user    false    193   �\       �	          0    32883    AspNetUserRoles 
   TABLE DATA               8   COPY "AspNetUserRoles" ("UserId", "RoleId") FROM stdin;
    public       fisher-user    false    196   �\       �	          0    32823    AspNetUserTokens 
   TABLE DATA               Q   COPY "AspNetUserTokens" ("UserId", "LoginProvider", "Name", "Value") FROM stdin;
    public       fisher-user    false    191   S]       �	          0    32791    AspNetUsers 
   TABLE DATA                 COPY "AspNetUsers" ("Id", "AccessFailedCount", "ConcurrencyStamp", "Email", "EmailConfirmed", "LockoutEnabled", "LockoutEnd", "NormalizedEmail", "NormalizedUserName", "PasswordHash", "PhoneNumber", "PhoneNumberConfirmed", "SecurityStamp", "TwoFactorEnabled", "UserName") FROM stdin;
    public       fisher-user    false    187   p]       �	          0    32799    Bookings 
   TABLE DATA               �   COPY "Bookings" ("ConfirmationNumber", "Passengers", "Username", "ArrivalTime", "DepartDate", "Departure", "Destination", "Id", "Price") FROM stdin;
    public       fisher-user    false    188   �_       �	           0    0    Bookings_ConfirmationNumber_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"Bookings_ConfirmationNumber_seq"', 1, false);
            public       fisher-user    false    201            �	          0    32857    Flight 
   TABLE DATA               u   COPY "Flight" ("Id", "ArrivalTime", "AvailableSeats", "DepartDate", "Departure", "Destination", "Price") FROM stdin;
    public       fisher-user    false    194   B`       �	          0    32807    FlightStatus 
   TABLE DATA               p   COPY "FlightStatus" ("FlightId", "ArrivalTime", "DepartDate", "Departure", "Destination", "Status") FROM stdin;
    public       fisher-user    false    189   �`       �	           0    0    FlightStatus_FlightId_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"FlightStatus_FlightId_seq"', 1, false);
            public       fisher-user    false    199            �	           0    0    Flight_Id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('"Flight_Id_seq"', 1, false);
            public       fisher-user    false    200            �	          0    32783    Flights 
   TABLE DATA               }   COPY "Flights" ("Id", "DepartDate", "Destination", "FlightType", "Passengers", "ReturnDate", "Source", "Status") FROM stdin;
    public       fisher-user    false    186   �a       �	          0    32778    __EFMigrationsHistory 
   TABLE DATA               K   COPY "__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
    public       fisher-user    false    185   b       >	           2606    32917 $   AspNetRoleClaims PK_AspNetRoleClaims 
   CONSTRAINT     a   ALTER TABLE ONLY "AspNetRoleClaims"
    ADD CONSTRAINT "PK_AspNetRoleClaims" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."AspNetRoleClaims" DROP CONSTRAINT "PK_AspNetRoleClaims";
       public         fisher-user    false    195    195            0	           2606    32822    AspNetRoles PK_AspNetRoles 
   CONSTRAINT     W   ALTER TABLE ONLY "AspNetRoles"
    ADD CONSTRAINT "PK_AspNetRoles" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public."AspNetRoles" DROP CONSTRAINT "PK_AspNetRoles";
       public         fisher-user    false    190    190            6	           2606    32912 $   AspNetUserClaims PK_AspNetUserClaims 
   CONSTRAINT     a   ALTER TABLE ONLY "AspNetUserClaims"
    ADD CONSTRAINT "PK_AspNetUserClaims" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."AspNetUserClaims" DROP CONSTRAINT "PK_AspNetUserClaims";
       public         fisher-user    false    192    192            9	           2606    32851 $   AspNetUserLogins PK_AspNetUserLogins 
   CONSTRAINT     {   ALTER TABLE ONLY "AspNetUserLogins"
    ADD CONSTRAINT "PK_AspNetUserLogins" PRIMARY KEY ("LoginProvider", "ProviderKey");
 R   ALTER TABLE ONLY public."AspNetUserLogins" DROP CONSTRAINT "PK_AspNetUserLogins";
       public         fisher-user    false    193    193    193            A	           2606    32890 "   AspNetUserRoles PK_AspNetUserRoles 
   CONSTRAINT     m   ALTER TABLE ONLY "AspNetUserRoles"
    ADD CONSTRAINT "PK_AspNetUserRoles" PRIMARY KEY ("UserId", "RoleId");
 P   ALTER TABLE ONLY public."AspNetUserRoles" DROP CONSTRAINT "PK_AspNetUserRoles";
       public         fisher-user    false    196    196    196            3	           2606    32830 $   AspNetUserTokens PK_AspNetUserTokens 
   CONSTRAINT     ~   ALTER TABLE ONLY "AspNetUserTokens"
    ADD CONSTRAINT "PK_AspNetUserTokens" PRIMARY KEY ("UserId", "LoginProvider", "Name");
 R   ALTER TABLE ONLY public."AspNetUserTokens" DROP CONSTRAINT "PK_AspNetUserTokens";
       public         fisher-user    false    191    191    191    191            )	           2606    32798    AspNetUsers PK_AspNetUsers 
   CONSTRAINT     W   ALTER TABLE ONLY "AspNetUsers"
    ADD CONSTRAINT "PK_AspNetUsers" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public."AspNetUsers" DROP CONSTRAINT "PK_AspNetUsers";
       public         fisher-user    false    187    187            ,	           2606    32932    Bookings PK_Bookings 
   CONSTRAINT     a   ALTER TABLE ONLY "Bookings"
    ADD CONSTRAINT "PK_Bookings" PRIMARY KEY ("ConfirmationNumber");
 B   ALTER TABLE ONLY public."Bookings" DROP CONSTRAINT "PK_Bookings";
       public         fisher-user    false    188    188            ;	           2606    32927    Flight PK_Flight 
   CONSTRAINT     M   ALTER TABLE ONLY "Flight"
    ADD CONSTRAINT "PK_Flight" PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY public."Flight" DROP CONSTRAINT "PK_Flight";
       public         fisher-user    false    194    194            .	           2606    32922    FlightStatus PK_FlightStatus 
   CONSTRAINT     _   ALTER TABLE ONLY "FlightStatus"
    ADD CONSTRAINT "PK_FlightStatus" PRIMARY KEY ("FlightId");
 J   ALTER TABLE ONLY public."FlightStatus" DROP CONSTRAINT "PK_FlightStatus";
       public         fisher-user    false    189    189            &	           2606    32790    Flights PK_Flights 
   CONSTRAINT     O   ALTER TABLE ONLY "Flights"
    ADD CONSTRAINT "PK_Flights" PRIMARY KEY ("Id");
 @   ALTER TABLE ONLY public."Flights" DROP CONSTRAINT "PK_Flights";
       public         fisher-user    false    186    186            $	           2606    32782 .   __EFMigrationsHistory PK___EFMigrationsHistory 
   CONSTRAINT     t   ALTER TABLE ONLY "__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");
 \   ALTER TABLE ONLY public."__EFMigrationsHistory" DROP CONSTRAINT "PK___EFMigrationsHistory";
       public         fisher-user    false    185    185            '	           1259    32901 
   EmailIndex    INDEX     L   CREATE INDEX "EmailIndex" ON "AspNetUsers" USING btree ("NormalizedEmail");
     DROP INDEX public."EmailIndex";
       public         fisher-user    false    187            <	           1259    32905    IX_AspNetRoleClaims_RoleId    INDEX     X   CREATE INDEX "IX_AspNetRoleClaims_RoleId" ON "AspNetRoleClaims" USING btree ("RoleId");
 0   DROP INDEX public."IX_AspNetRoleClaims_RoleId";
       public         fisher-user    false    195            4	           1259    32906    IX_AspNetUserClaims_UserId    INDEX     X   CREATE INDEX "IX_AspNetUserClaims_UserId" ON "AspNetUserClaims" USING btree ("UserId");
 0   DROP INDEX public."IX_AspNetUserClaims_UserId";
       public         fisher-user    false    192            7	           1259    32907    IX_AspNetUserLogins_UserId    INDEX     X   CREATE INDEX "IX_AspNetUserLogins_UserId" ON "AspNetUserLogins" USING btree ("UserId");
 0   DROP INDEX public."IX_AspNetUserLogins_UserId";
       public         fisher-user    false    193            ?	           1259    32908    IX_AspNetUserRoles_RoleId    INDEX     V   CREATE INDEX "IX_AspNetUserRoles_RoleId" ON "AspNetUserRoles" USING btree ("RoleId");
 /   DROP INDEX public."IX_AspNetUserRoles_RoleId";
       public         fisher-user    false    196            1	           1259    32904    RoleNameIndex    INDEX     U   CREATE UNIQUE INDEX "RoleNameIndex" ON "AspNetRoles" USING btree ("NormalizedName");
 #   DROP INDEX public."RoleNameIndex";
       public         fisher-user    false    190            *	           1259    32902    UserNameIndex    INDEX     Y   CREATE UNIQUE INDEX "UserNameIndex" ON "AspNetUsers" USING btree ("NormalizedUserName");
 #   DROP INDEX public."UserNameIndex";
       public         fisher-user    false    187            D	           2606    32878 7   AspNetRoleClaims FK_AspNetRoleClaims_AspNetRoles_RoleId    FK CONSTRAINT     �   ALTER TABLE ONLY "AspNetRoleClaims"
    ADD CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES "AspNetRoles"("Id") ON DELETE CASCADE;
 e   ALTER TABLE ONLY public."AspNetRoleClaims" DROP CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId";
       public       fisher-user    false    195    2352    190            B	           2606    32839 7   AspNetUserClaims FK_AspNetUserClaims_AspNetUsers_UserId    FK CONSTRAINT     �   ALTER TABLE ONLY "AspNetUserClaims"
    ADD CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers"("Id") ON DELETE CASCADE;
 e   ALTER TABLE ONLY public."AspNetUserClaims" DROP CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId";
       public       fisher-user    false    2345    192    187            C	           2606    32852 7   AspNetUserLogins FK_AspNetUserLogins_AspNetUsers_UserId    FK CONSTRAINT     �   ALTER TABLE ONLY "AspNetUserLogins"
    ADD CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers"("Id") ON DELETE CASCADE;
 e   ALTER TABLE ONLY public."AspNetUserLogins" DROP CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId";
       public       fisher-user    false    187    2345    193            E	           2606    32891 5   AspNetUserRoles FK_AspNetUserRoles_AspNetRoles_RoleId    FK CONSTRAINT     �   ALTER TABLE ONLY "AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES "AspNetRoles"("Id") ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."AspNetUserRoles" DROP CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId";
       public       fisher-user    false    190    2352    196            F	           2606    32896 5   AspNetUserRoles FK_AspNetUserRoles_AspNetUsers_UserId    FK CONSTRAINT     �   ALTER TABLE ONLY "AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers"("Id") ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."AspNetUserRoles" DROP CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId";
       public       fisher-user    false    196    2345    187            �	      x������ � �      �	   �   x���
�0�s�/+I���c�E<����e���������� �'@'܆<=�.d҂�Pc�P��*��4H�D���^�������ٿf�/��y����j�v&�T��8#p�Ǌ%�ONU}��LM�bp �#U�}4Y]�]��˩K^f{?Xk�f!8�      �	      x������ � �      �	      x������ � �      �	   �   x���ɭ0����@�^���	?%�%�,=ya�0y�W0�2���Ŗ�ɦ�:jћ�
,١��_�P�1O:;�I$��.l��l<w�g��T�� �9��( ��!��CͩX�}��OrE��`���M���1�g:f      �	      x������ � �      �	     x�}�IO�@���_�z_H'v��Cq镘���d���qѧ~�����ŴA30"�@50B��r\B+]�	L!VX��C+@E0�H���,h�8%����uhv+�m6��m���}Y'oIH�N�lq���^w\֓�8�݋lp��$�(��������A��o٨=�U�=v���aq��|z�v��s�+TvaIj�_�z���|�?�2v]]����Tq��L@q �8� �4pH���D�G���bHidb��0�5��IP�Bm呉s�09����Gt� �R 2�v�f���sW�?2�P�3��=U�u�W�hW���k5ۥ���w*�=�/VbV��h�ǫ�3/V�[��3,���}��J�9(�4�Zy ���DlC�G[zNВ�8$�9 ����a Y��Dx�H'x0� ��k$S��M�,e<��~C�����D��w ��z2�I�y�w��D���f���������}@H������گ��u�ߏW�������p�ˠI,I���2�X�d�t.�y���E������      �	   �   x�m��
�0ϛ��Dv7?����^���F�@�BJ���s��v�ӆ�@�sx��H� ��_7\��7a��p{��#5
�b�����3՝�i��m�K�scQX��cc~�����*Fɺ��+��7w�I��O!�a���pB� �N5M      �	   �   x�m��
�@���S�*I��?7��E|/��.�]hw�߮�Њ0�/3�a�$^TuI"	�	W\p�U�G���g8;;8PCXe����ٸ����>=�|��a��o^6T?�V���c��D��r.`��d~\����i�;D|P9�      �	   �   x�3�420��50"+2���Č-��A��9��I�Ŝ�������y
!���\FP�&�F&
�P�Hb��022���9��r�R��&cU�,f�f�G~iqI~�KjNbej
�	AL�C�c	�%�pG��qqq ��?�      �	   �   x�3�420��50�5�P04�26�20�t��)�M*-�,�4A(�T00�*��L�����S��M�2�1�50*C2$#391=f�9��E9�y)�pS��2�#���$?n�	vS�<�a�c	�1%�pcb���� ��B�      �	   n   x�e�K
�0C��.�|Z�[�!�_QTpz��d���TbMхs�ḑ�ϋ\Q�F���h�w/i�X1�?����$�V��_�9���sYb�ظ����R�͏71     