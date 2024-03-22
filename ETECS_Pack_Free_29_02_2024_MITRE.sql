BEGIN;
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.17 (Debian 11.17-astra.se3)
-- Dumped by pg_dump version 11.17 (Debian 11.17-astra.se3)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET escape_string_warning = off;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: export_directives; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.export_directives (
    id bigint,
    name character varying(255),
    severity core.severity,
    assigned_to character varying(255),
    rsf character varying(255),
    rie boolean,
    aggregate_in bigint,
    amc bigint,
    group_id bigint,
    gossopka boolean,
    recommendation text,
    agc integer,
    git character varying,
    rule text,
    deleted_at timestamp without time zone,
    risk_score smallint,
    author text,
    reference_url character varying(256)[],
    note text,
    timestamp_override text,
    res corrdisp.enum_rule_edit_state,
    produce_incident boolean,
    pae boolean,
    skie boolean,
    threats_array json[],
    gic character varying,
    observes uuid[]
);


ALTER TABLE public.export_directives OWNER TO postgres;

--
-- Name: export_events_fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.export_events_fields (
    field_name character varying(256),
    field_value_type preferences.event_fields_value_type,
    field_render_type preferences.event_fields_render_type,
    field_short_description character varying(512),
    field_long_description character varying(4096),
    field_source preferences.event_fields_source,
    field_source_type character varying(256),
    field_display_priority integer
);


ALTER TABLE public.export_events_fields OWNER TO postgres;

--
-- Name: export_filters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.export_filters (
    source bytea,
    name character varying(128),
    descript character varying(1024),
    user_uuid text,
    rule_tree json,
    source_type preferences.filter_source_type
);


ALTER TABLE public.export_filters OWNER TO postgres;

--
-- Name: export_plugin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.export_plugin (
    name character varying(128),
    descript character varying(1024),
    plugin_type preferences.plugin_type,
    pi_id integer,
    body text,
    item_description character varying(1024),
    normalization_rule preferences.normalization_rule_text,
    sample_text text,
    extracted_name character varying(256),
    target_name character varying(256),
    field_normalization_rule preferences.normalization_rule_text
);


ALTER TABLE public.export_plugin OWNER TO postgres;

--
-- Data for Name: export_directives; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.export_directives VALUES (10015, 'ETECS.Рубикон.Ошибка входа пользователя в терминале', 'low', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: e55mrsjfx
Type: Sequence
Children:
- ID: 44wg2mzgs
  ParentID: e55mrsjfx
  Type: Filter
  Filter: ETECS.Рубикон.Ошибка входа пользователя в терминале
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{5025105c-cd35-4746-896c-e9a6b42ff777}');
INSERT INTO public.export_directives VALUES (10003, 'ETECS.Сканер-ВС 6.Добавлен новый актив', 'baseline', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: 9tpfcaa6x
Type: Sequence
Children:
- ID: olhg2m6k9
  ParentID: 9tpfcaa6x
  Type: Filter
  Variables:
  - Name: User_Name
    Expression: event["User.Name"]
  - Name: User_Role
    Expression: event["User.Roles.0"]
  - Name: Asset_Name
    Expression: event["Asset.Name"]
  - Name: Asset_Criticality
    Expression: event["Asset.Criticality"]
  - Name: Asset_Type
    Expression: event["Asset.Type"]
  Filter: ETECS. Сканер-ВС 6. Добавлен новый актив
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{0a41ddd8-ab02-4314-a8bb-6a04eb45ef22}');
INSERT INTO public.export_directives VALUES (10005, 'ETECS.Сканер-ВС 6.Инвентаризация актива успешно завершена', 'baseline', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: pq8kq1a6t
Type: Sequence
Children:
- ID: ocbhoh6a6
  ParentID: pq8kq1a6t
  Type: Filter
  Variables:
  - Name: Packages_Count
    Expression: event["Scanner.Packages.Count"]
  Filter: ETECS. Сканер-ВС 6. Инвентаризация актива успешно завершена
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{0a41ddd8-ab02-4314-a8bb-6a04eb45ef22}');
INSERT INTO public.export_directives VALUES (10008, 'ETECS.Сканер-ВС 6.На активах найдены критические уязвимости', 'high', '', '', false, 10, 2, 0, false, '', 0, '', 'ID: qxos93p4o
Type: Sequence
Children:
- ID: o2nrrurwo
  ParentID: qxos93p4o
  Type: Filter
  Variables:
  - Name: Host_IP
    Expression: event["Host.IP.0"]
  - Name: Vulnerability_ID
    Expression: event["Vulnerability.ID"]
  - Name: Vulnerability_Score_Base
    Expression: event["Vulnerability.Score.Base"]
  Filter: ETECS. Сканер-ВС 6. Найдены критические уязвимости
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{0a41ddd8-ab02-4314-a8bb-6a04eb45ef22}');
INSERT INTO public.export_directives VALUES (10013, 'ETECS.Сканер-ВС 6.Не удалось изменить пароль пользователю', 'low', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: bz2yknb26
Type: Sequence
Children:
- ID: gfdfjtsoh
  ParentID: bz2yknb26
  Type: Filter
  Variables:
  - Name: Host_IP
    Expression: event["Host.IP.0"]
  - Name: User_Role
    Expression: event["User.Roles.0"]
  - Name: User_ID
    Expression: event["User.ID"]
  - Name: Event_Reason
    Expression: event["Event.Reason"]
  Filter: ETECS. Сканер-ВС 6. Не удалось изменить пароль пользователю
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{0a41ddd8-ab02-4314-a8bb-6a04eb45ef22}');
INSERT INTO public.export_directives VALUES (10011, 'ETECS.Сканер-ВС 6.Не удалось создать нового пользователя', 'low', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: ke0wzwlew
Type: Sequence
Children:
- ID: klv760in4
  ParentID: ke0wzwlew
  Type: Filter
  Variables:
  - Name: Host_IP
    Expression: event["Host.IP.0"]
  - Name: User_Name
    Expression: event["Scanner.Auth.Login"]
  - Name: Event_Reason
    Expression: event["Event.Reason"]
  Filter: ETECS. Сканер-ВС 6. Не удалось создать нового пользователя
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{0a41ddd8-ab02-4314-a8bb-6a04eb45ef22}');
INSERT INTO public.export_directives VALUES (10000, 'ETECS.Сканер-ВС 6.Ошибка авторизации в графический интерфейс', 'low', '', '', false, 20, 3, 0, false, '', 0, '', 'ID: f7j8jpkrm
Type: Sequence
Children:
- ID: scu4ydhr6
  ParentID: f7j8jpkrm
  Type: Filter
  Variables:
  - Name: Source_IP
    Expression: event["Source.IP"]
  - Name: User_Login
    Expression: event["Scanner.Auth.Login"]
  Filter: ETECS. Сканер-ВС 6. Ошибка авторизации в графический интерфейс
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{0a41ddd8-ab02-4314-a8bb-6a04eb45ef22}');
INSERT INTO public.export_directives VALUES (10006, 'ETECS.Сканер-ВС 6.Ошибка инвентаризации актива', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: pq8kq1a6t
Type: Sequence
Children:
- ID: ocbhoh6a6
  ParentID: pq8kq1a6t
  Type: Filter
  Filter: ETECS. Сканер-ВС 6. Ошибка инвентаризации актива
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{0a41ddd8-ab02-4314-a8bb-6a04eb45ef22}');
INSERT INTO public.export_directives VALUES (10014, 'ETECS.Сканер-ВС 6.Пароль пользователя успешно изменён', 'low', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: yh8638ak2
Type: Sequence
Children:
- ID: jw3xoxpxr
  ParentID: yh8638ak2
  Type: Filter
  Variables:
  - Name: Host_IP
    Expression: event["Host.IP.0"]
  - Name: User_Role
    Expression: event["User.Roles.0"]
  - Name: User_ID
    Expression: event["User.ID"]
  Filter: ETECS. Сканер-ВС 6. Пароль пользователя успешно изменён
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{0a41ddd8-ab02-4314-a8bb-6a04eb45ef22}');
INSERT INTO public.export_directives VALUES (10012, 'ETECS.Сканер-ВС 6.Создан новый пользователь', 'low', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: yh8638ak2
Type: Sequence
Children:
- ID: jw3xoxpxr
  ParentID: yh8638ak2
  Type: Filter
  Variables:
  - Name: Host_IP
    Expression: event["Host.IP.0"]
  - Name: User_Name
    Expression: event["Scanner.Auth.Login"]
  Filter: ETECS. Сканер-ВС 6. Создан новый пользователь
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{0a41ddd8-ab02-4314-a8bb-6a04eb45ef22}');
INSERT INTO public.export_directives VALUES (10004, 'ETECS.Сканер-ВС 6.Удалён актив', 'low', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: 5k5h4v0ab
Type: Sequence
Children:
- ID: w0wch6l0b
  ParentID: 5k5h4v0ab
  Type: Filter
  Variables:
  - Name: User_Name
    Expression: event["User.Name"]
  - Name: User_Role
    Expression: event["User.Roles.0"]
  - Name: Asset_Name
    Expression: event["Asset.Name"]
  - Name: Asset_Type
    Expression: event["Asset.Type"]
  - Name: Asset_Criticality
    Expression: event["Asset.Criticality"]
  Filter: ETECS. Сканер-ВС 6. Удалён актив
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{0a41ddd8-ab02-4314-a8bb-6a04eb45ef22}');
INSERT INTO public.export_directives VALUES (10001, 'ETECS.Сканер-ВС 6.Успешный вход пользователя', 'baseline', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: f7j8jpkrm
Type: Sequence
Children:
- ID: scu4ydhr6
  ParentID: f7j8jpkrm
  Type: Filter
  Variables:
  - Name: Source_IP
    Expression: event["Source.IP"]
  - Name: User_Login
    Expression: event["Scanner.Auth.Login"]
  - Name: User_Role
    Expression: event["User.Roles.0"]
  Filter: ETECS. Сканер-ВС 6. Успешный вход пользователя
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{0a41ddd8-ab02-4314-a8bb-6a04eb45ef22}');
INSERT INTO public.export_directives VALUES (10016, 'ETECS.Рубикон.Запуск/остановка СОВ обнаружения сканирования', 'low', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: a67ubismf
Type: Sequence
Children:
- ID: wlssod0ye
  ParentID: a67ubismf
  Type: Filter
  Filter: ETECS.Рубикон.Запуск/остановка СОВ обнаружения сканирования
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{5025105c-cd35-4746-896c-e9a6b42ff777}');
INSERT INTO public.export_directives VALUES (10017, 'ETECS.Рубикон.СОВ не запущена', 'low', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: 8mj88rf4x
Type: Sequence
Children:
- ID: rumnoz63z
  ParentID: 8mj88rf4x
  Type: Filter
  Filter: ETECS.Рубикон.СОВ не запущена
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{5025105c-cd35-4746-896c-e9a6b42ff777}');
INSERT INTO public.export_directives VALUES (10018, 'ETECS.Рубикон.Критически мало места на жёстком диске', 'low', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: u4pq8kv0u
Type: Sequence
Children:
- ID: bz224sojp
  ParentID: u4pq8kv0u
  Type: Filter
  Filter: ETECS.Рубикон.Критически мало места на жёстком диске
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{5025105c-cd35-4746-896c-e9a6b42ff777}');
INSERT INTO public.export_directives VALUES (10019, 'ETECS.Windows.Использование истории SID', 'high', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: 9k3k694oz
Type: Sequence
Children:
- ID: 3wedglcxh
  ParentID: 9k3k694oz
  Type: Filter
  Filter: ETECS.Windows.Использование истории SID
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1134\\",\\"ThreatSubTechnique\\":\\"T1134.005\\",\\"ThreatTactic\\":\\"TA0004, TA0005\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10020, 'ETECS.VipNet HW.Изменился IP-aдрес сетевого узла', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: bwbbxxb1c
Type: Sequence
Children:
- ID: u4twpl0qa
  ParentID: bwbbxxb1c
  Type: Filter
  Filter: ETECS.VipNet HW.Изменился IP-aдрес сетевого узла
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10021, 'ETECS.KSC.Срабатывание защиты', 'high', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: bwbbxxb1c
Type: Sequence
Children:
- ID: u4twpl0qa
  ParentID: bwbbxxb1c
  Type: Filter
  Filter: ETECS.KSC.Срабатывание защиты
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10022, 'ETECS.KSC.Сторонний источник баз САВЗ', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: bwbbxxb1c
Type: Sequence
Children:
- ID: u4twpl0qa
  ParentID: bwbbxxb1c
  Type: Filter
  Filter: ETECS.KSC.Сторонний источник баз САВЗ
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10023, 'ETECS.KSC.Устарели базы данных САВЗ', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: bwbbxxb1c
Type: Sequence
Children:
- ID: u4twpl0qa
  ParentID: bwbbxxb1c
  Type: Filter
  Filter: ETECS.KSC.Устарели базы данных САВЗ
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10024, 'ETECS.KSC.Сбой обновления', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: bwbbxxb1c
Type: Sequence
Children:
- ID: u4twpl0qa
  ParentID: bwbbxxb1c
  Type: Filter
  Filter: ETECS.KSC.Сбой обновления
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10025, 'ETECS.KSC.Срабатывание самозащиты', 'high', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: pasnvw0h5
Type: Sequence
Children:
- ID: 396kzvkcn
  ParentID: pasnvw0h5
  Type: Filter
  Filter: ETECS.KSC.Срабатывание самозащиты
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10026, 'ETECS.Linux.Удаление пользователя', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: q0feu5m5g
Type: Sequence
Children:
- ID: iy9aobsl0
  ParentID: q0feu5m5g
  Type: Filter
  Filter: ETECS.Linux.Удаление пользователя
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1531\\",\\"ThreatSubTechnique\\":\\"\\",\\"ThreatTactic\\":\\"TA0040\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10027, 'ETECS.Linux.Очистка правил в iptables', 'high', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: dxts2qk2y
Type: Sequence
Children:
- ID: sb91cuxh5
  ParentID: dxts2qk2y
  Type: Filter
  Filter: ETECS.Linux.Очистка правил в iptables
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1562\\",\\"ThreatSubTechnique\\":\\"T1562.004\\",\\"ThreatTactic\\":\\"TA0005\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10028, 'ETECS.Linux.Пользователь удалён из группы', 'medium', '', '', false, 5, 2, 0, false, '', 0, '', 'ID: euqhhkzhf
Type: Sequence
Children:
- ID: k2abrkhou
  ParentID: euqhhkzhf
  Type: Filter
  Filter: ETECS.Linux.Пользователь удалён из группы
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1098\\",\\"ThreatSubTechnique\\":\\"\\",\\"ThreatTactic\\":\\"TA0003\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10029, 'ETECS.Linux.SSH подключение', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: nzc0xmann
Type: Sequence
Children:
- ID: ujod6h0el
  ParentID: nzc0xmann
  Type: Filter
  Filter: ETECS.Linux.SSH подключение
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1021\\",\\"ThreatSubTechnique\\":\\"T1021.004\\",\\"ThreatTactic\\":\\"TA0008\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10030, 'ETECS.Dr.Web 13 Esuite Server.Вход в графический интерфейс', 'low', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: bwbbxxb1c
Type: Sequence
Children:
- ID: u4twpl0qa
  ParentID: bwbbxxb1c
  Type: Filter
  Filter: ETECS.Dr.Web 13 Esuite Server.Вход в графический интерфейс
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10031, 'ETECS.Рубикон.СОВ.Сработало правило', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: c83k2ch2o
Type: Sequence
Children:
- ID: qkwvr9odk
  ParentID: c83k2ch2o
  Type: Filter
  Filter: ETECS.Рубикон.СОВ.Срабатывание СОВ
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{5025105c-cd35-4746-896c-e9a6b42ff777}');
INSERT INTO public.export_directives VALUES (10032, 'ETECS.Рубикон.Ошибка контрольные суммы', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: fno6kxxqj
Type: Sequence
Children:
- ID: ptdfhqjzi
  ParentID: fno6kxxqj
  Type: Filter
  Filter: ETECS.Рубикон.Ошибка контрольные суммы
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{5025105c-cd35-4746-896c-e9a6b42ff777}');
INSERT INTO public.export_directives VALUES (10033, 'ETECS.Windows.Изменение конфигурации межсетевого экрана', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: omytgak6h
Type: Sequence
Children:
- ID: r3ri939hz
  ParentID: omytgak6h
  Type: Filter
  Filter: ETECS.Windows.Изменение конфигурации межсетевого экрана
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1562\\",\\"ThreatSubTechnique\\":\\"T1562.004\\",\\"ThreatTactic\\":\\"TA0005\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10034, 'ETECS.Windows.Антивирусная защита была отключена', 'high', '', '', false, 30, 2, 0, false, '', 0, '', 'ID: 33f9f1wlw
Type: Sequence
Children:
- ID: 6izyq0l6d
  ParentID: 33f9f1wlw
  Type: Filter
  Filter: ETECS.Windows.Антивирусная защита была отключена
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1562\\",\\"ThreatSubTechnique\\":\\"T1562.004\\",\\"ThreatTactic\\":\\"TA0005\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10035, 'ETECS.Linux.Создание нового пользователя', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: o2cq8yxd0
Type: Sequence
Children:
- ID: jepo99dap
  ParentID: o2cq8yxd0
  Type: Filter
  Filter: ETECS.Linux.Создание нового пользователя
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1136\\",\\"ThreatSubTechnique\\":\\"T1136.002\\",\\"ThreatTactic\\":\\"TA0003\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1136\\",\\"ThreatSubTechnique\\":\\"T1136.001\\",\\"ThreatTactic\\":\\"TA0003\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10036, 'ETECS.Cyberprotect Backup and Recovery', 'low', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: q4paebaie
Type: Sequence
Children:
- ID: wuanl0awz
  ParentID: q4paebaie
  Type: Filter
  Filter: ETECS.Cyberprotect Backup and Recovery
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10037, 'ETECS.Linux.Пароль для root был изменён', 'high', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: 45ob1fncg
Type: Sequence
Children:
- ID: m9zqq1ytr
  ParentID: 45ob1fncg
  Type: Filter
  Filter: ETECS.Linux.Пароль для root был изменён
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1531\\",\\"ThreatSubTechnique\\":\\"\\",\\"ThreatTactic\\":\\"TA0040\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10038, 'ETECS.Windows.Политика аудита системы была изменена', 'medium', '', '', false, 60, 2, 0, false, '', 0, '', 'ID: pr82fnbkq
Type: Sequence
Children:
- ID: tarwbalwg
  ParentID: pr82fnbkq
  Type: Filter
  Filter: ETECS.Windows.Политика аудита системы была изменена.
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1562\\",\\"ThreatSubTechnique\\":\\"T1562.002\\",\\"ThreatTactic\\":\\"TA0005\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10039, 'ETECS.Linux.Пользователь добавлен в группу', 'medium', '', '', false, 5, 2, 0, false, '', 0, '', 'ID: euqhhkzhf
Type: Sequence
Children:
- ID: k2abrkhou
  ParentID: euqhhkzhf
  Type: Filter
  Filter: ETECS.Linux.Пользователь добавлен в группу
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1098\\",\\"ThreatSubTechnique\\":\\"\\",\\"ThreatTactic\\":\\"TA0003\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10040, 'ETECS.Windows.Обнаружение всех операций с учётными записями пользователей', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: jgim995gu
Type: Sequence
Children:
- ID: 0jpu6f1zq
  ParentID: jgim995gu
  Type: Filter
  Filter: ETECS.Windows.Обнаружение всех операций с учётными записями пользователей
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1098\\",\\"ThreatSubTechnique\\":\\"\\",\\"ThreatTactic\\":\\"TA0003\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10041, 'ETECS.Windows.Неуспешная попытка входа в систему', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: g8fgyr2du
Type: Sequence
Children:
- ID: 9spkqic5m
  ParentID: g8fgyr2du
  Type: Filter
  Filter: ETECS.Windows.Неуспешная попытка входа в систему
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.004\\",\\"ThreatTactic\\":\\"TA0006\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.003\\",\\"ThreatTactic\\":\\"TA0006\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.002\\",\\"ThreatTactic\\":\\"TA0006\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.001\\",\\"ThreatTactic\\":\\"TA0006\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10042, 'ETECS.Linux.Ошибка аутентификации при попытке входа от учётной записи администратора', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: el40fpizi
Type: Sequence
Children:
- ID: eqbkfq6d1
  ParentID: el40fpizi
  Type: Filter
  Filter: ETECS.Linux.Ошибка аутентификации при попытке входа от учётной записи администратора
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.004\\",\\"ThreatTactic\\":\\"TA0006\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.003\\",\\"ThreatTactic\\":\\"TA0006\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.002\\",\\"ThreatTactic\\":\\"TA0006\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.001\\",\\"ThreatTactic\\":\\"TA0006\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10043, 'ETECS.Internal.Неуспешная попытка входа в КОМРАД', 'low', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: deiqoo98z
Type: Sequence
Children:
- ID: hfoae4yt4
  ParentID: deiqoo98z
  Type: Filter
  Filter: ETECS.Internal.Неуспешная попытка входа в КОМРАД
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.004\\",\\"ThreatTactic\\":\\"TA0006\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.003\\",\\"ThreatTactic\\":\\"TA0006\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.002\\",\\"ThreatTactic\\":\\"TA0006\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.001\\",\\"ThreatTactic\\":\\"TA0006\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10044, 'ETECS.Linux.Неправильный ввод пароля', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: mqjmt8rgr
Type: Sequence
Children:
- ID: qs5rmbclw
  ParentID: mqjmt8rgr
  Type: Filter
  Filter: ETECS.Linux.Неправильный ввод пароля
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.004\\",\\"ThreatTactic\\":\\"TA0006\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.003\\",\\"ThreatTactic\\":\\"TA0006\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.002\\",\\"ThreatTactic\\":\\"TA0006\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1110\\",\\"ThreatSubTechnique\\":\\"T1110.001\\",\\"ThreatTactic\\":\\"TA0006\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10045, 'ETECS.Dr.Web 13 Esuite Server.Выход из графического интерфейса', 'low', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: bwbbxxb1c
Type: Sequence
Children:
- ID: u4twpl0qa
  ParentID: bwbbxxb1c
  Type: Filter
  Filter: ETECS.Dr.Web 13 Esuite Server.Выход из графического интерфейса
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10046, 'ETECS.Windows.Удаление пользователя', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: ahsvxutgj
Type: Sequence
Children:
- ID: 05w7btxbc
  ParentID: ahsvxutgj
  Type: Filter
  Filter: ETECS.Windows.Удаление пользователя
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1531\\",\\"ThreatSubTechnique\\":\\"\\",\\"ThreatTactic\\":\\"TA0040\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10047, 'ETECS.Windows.Очистка журналов', 'high', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: b8o04en7h
Type: Sequence
Children:
- ID: 5jc28h90q
  ParentID: b8o04en7h
  Type: Filter
  Filter: ETECS.Windows.Очистка журналов
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1070\\",\\"ThreatSubTechnique\\":\\"T1070.001\\",\\"ThreatTactic\\":\\"TA0005\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10048, 'ETECS.Windows.Активность Windows PowerShell', 'medium', '', '', false, 5, 2, 0, false, '', 0, '', 'ID: k6x4u7ddk
Type: Sequence
Children:
- ID: ur3vs2nnc
  ParentID: k6x4u7ddk
  Type: Filter
  Filter: ETECS.Windows.Активность Windows PowerShell
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1059\\",\\"ThreatSubTechnique\\":\\"T1059.001\\",\\"ThreatTactic\\":\\"TA0002\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10049, 'ETECS.Windows.Обнаружение передачи пользователю прав локального администратора', 'high', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: 4bhlpsi88
Type: Sequence
Children:
- ID: 13mbf5uir
  ParentID: 4bhlpsi88
  Type: Filter
  Filter: ETECS.Windows.Обнаружение передачи пользователю прав локального администратора
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1098\\",\\"ThreatSubTechnique\\":\\"\\",\\"ThreatTactic\\":\\"TA0003\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10050, 'ETECS.Windows.Создание нового пользователя', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: ffneb3b19
Type: Sequence
Children:
- ID: d7eie0sm2
  ParentID: ffneb3b19
  Type: Filter
  Filter: ETECS.Windows.Создание нового пользователя
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1136\\",\\"ThreatSubTechnique\\":\\"T1136.002\\",\\"ThreatTactic\\":\\"TA0003\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1136\\",\\"ThreatSubTechnique\\":\\"T1136.001\\",\\"ThreatTactic\\":\\"TA0003\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10051, 'ETECS.Dr.Web 13 Esuite Server.Обнаружение вредоносного файла', 'high', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: bwbbxxb1c
Type: Sequence
Children:
- ID: u4twpl0qa
  ParentID: bwbbxxb1c
  Type: Filter
  Filter: ETECS.Dr.Web 13 Esuite Server.Обнаружение вредоносного файла
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{"{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1608\\",\\"ThreatSubTechnique\\":\\"T1608.001\\",\\"ThreatTactic\\":\\"TA0042\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1588\\",\\"ThreatSubTechnique\\":\\"T1588.001\\",\\"ThreatTactic\\":\\"TA0042\\"}","{\\"ThreatFrameworkName\\":\\"MITRE ATT\\\\u0026CK\\",\\"ThreatFrameworkVersion\\":\\"v13\\",\\"ThreatTechnique\\":\\"T1587\\",\\"ThreatSubTechnique\\":\\"T1587.001\\",\\"ThreatTactic\\":\\"TA0042\\"}"}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10052, 'ETECS.Обнаружение важных антивирусных событий', 'high', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: bwbbxxb1c
Type: Sequence
Children:
- ID: u4twpl0qa
  ParentID: bwbbxxb1c
  Type: Filter
  Filter: ETECS.Обнаружение важных антивирусных событий
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10053, 'ETECS.VipNet EPP.Системная активность', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: bwbbxxb1c
Type: Sequence
Children:
- ID: u4twpl0qa
  ParentID: bwbbxxb1c
  Type: Filter
  Filter: ETECS.VipNet EPP.Системная активность
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{56f1c962-b512-4946-833d-5f226c84b6ea}');
INSERT INTO public.export_directives VALUES (10054, 'ETECS.Рубикон.Срабатывание МЭ', 'medium', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: a67ubismf
Type: Sequence
Children:
- ID: wlssod0ye
  ParentID: a67ubismf
  Type: Filter
  Filter: ETECS.Рубикон.Срабатывание МЭ
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{5025105c-cd35-4746-896c-e9a6b42ff777}');
INSERT INTO public.export_directives VALUES (10002, 'ETECS.Сканер-ВС 6.Выход пользователя из графического интерфейса', 'baseline', '', '', false, 0, 0, 0, false, '', 0, '', 'ID: 19j6ay79i
Type: Sequence
Children:
- ID: 90yym3gkm
  ParentID: 19j6ay79i
  Type: Filter
  Variables:
  - Name: Source_IP
    Expression: event["Source.IP"]
  - Name: User_Login
    Expression: event["Scanner.Auth.Login"]
  - Name: User_Role
    Expression: event["User.Roles.0"]
  Filter: ETECS. Сканер-ВС 6. Выход пользователя из графического интерфейса
  Forking: true
', NULL, NULL, NULL, NULL, NULL, NULL, 'manual', true, false, false, '{}', '', '{0a41ddd8-ab02-4314-a8bb-6a04eb45ef22}');


--
-- Data for Name: export_events_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.Command.Path', 8, 2, 'Путь команды Powershell', 'Путь команды Windows Powershell', 2, 'wmi', 3062);
INSERT INTO public.export_events_fields VALUES ('Status', 5, 1, 'Статус Dr.Web', 'Dr.Web статус', 3, 'user', 0);
INSERT INTO public.export_events_fields VALUES ('Operation', 5, 1, 'Действие Dr.Web', 'Dr.Web действие', 3, 'user', 0);
INSERT INTO public.export_events_fields VALUES ('Subject', 8, 2, 'Тема Dr.Web', 'Dr.Web объект', 3, 'user', 0);
INSERT INTO public.export_events_fields VALUES ('CEFX.OldFileModificationTime', 11, 5, 'Время модификации', 'Время последнего изменения старого файла.', 2, 'syslog', 2017);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.Subdomain', 8, 2, 'Поддомен источника', 'Поддомен источника - часть FQDN источника включает все части за исключением имени. Например, для адреса "www.east.mydomain.ru" значение поддомена будет "east". В случаях, когда у домена есть несколько уровней поддоменов,  например, "sub2.sub1.example.ru", поддомен должен быть равен  "sub2.sub1" без точки в конце строки.)', 4, 'ecs', 10577);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.Bytes', 3, 1, 'Байт передано от источника', 'Байт передано от источника к узлу назначения.', 4, 'ecs', 10578);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.Packets', 3, 1, 'Пакетов передано от источника', 'Пакетов передано от источника к узлу назначения.', 4, 'ecs', 10579);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.NatIP', 15, 7, 'IP NAT источника', 'IP сессий NAT источника. Обычно включает в себя пути балансировщиков нагрузки, межсетевых экранов, роутеров.например, путь внутреннего клиента в интернет', 4, 'ecs', 10580);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.NatPort', 5, 1, 'Порт NAT источника', 'Порт сессий NAT источника. Обычно включает в себя пути балансировщиков нагрузки, межсетевых экранов, роутеров.например, путь внутреннего клиента в интернет', 4, 'ecs', 10581);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Signed', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.User.ID', 8, 2, 'ID пользователя источника', 'Идентификатор пользователя источника события, например, ''S-1-5-21-202424912787-2692429404-2351956786-1000''.', 4, 'ecs', 10582);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.Command.Name', 8, 2, 'Имя команды Powershell', 'Имя команды Windows Powershell', 2, 'wmi', 3063);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Configuration', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Param8', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LayerRTID', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.OriginalFileName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.FileVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.Command.Type', 8, 2, 'Тип команды Powershell', 'Тип команды Windows Powershell', 2, 'wmi', 3064);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SrcPort', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.User.Name', 8, 2, 'Пользователь источника', 'Сокращённое имя пользователя или логин на источнике события, например, p.picasso.', 4, 'ecs', 10583);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ParentCommandLine', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.User.FullName', 8, 2, 'Имя пользователя источника', 'Полное имя пользователя на источнике события, например Pablo Picasso.', 4, 'ecs', 10584);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.User.Email', 8, 2, 'Почта пользователя источника', 'Почта пользователя на источнике события.', 4, 'ecs', 10585);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.User.Hash', 8, 2, 'Хеш пользователя источника', 'Уникальный хеш пользователя на источнике события для сопоставления информации о пользователе в анонимной форме. Полезно, если *.User.ID или *.User.Name содержат  конфиденциальную информацию и не могут быть использованы.', 4, 'ecs', 10586);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.User.Domain', 8, 2, 'Каталог пользователя источника', 'Домен каталога пользователей к которому принадлежит пользователь источника события, например, доменное имя LDAP или Active Directory.', 4, 'ecs', 10587);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.User.Roles', 9, 2, 'Роли пользователя источника', 'Массив ролей пользователя на источнике события в момент события.', 4, 'ecs', 10588);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.VersionNumber', 8, 2, 'Версия X509', 'Версия формата x509.', 4, 'ecs', 10589);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.SerialNumber', 8, 2, 'Серийный номер x509', 'Уникальный серийный номер сертификата x509, выданный удостоверяющим центром. Если это значение буквенно-цифровое, оно должно быть отформатировано без двоеточий и заглавных букв.', 4, 'ecs', 10590);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.IssuerDistinguishedName', 8, 2, 'УЦ (x509 DN)', 'Отличительное имя выдающего удостоверяющего центра(DN) .', 4, 'ecs', 10591);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.IssuerCommonName', 8, 2, 'x509 CN', 'Список общих имён (CN) выпустившего сертификат Удостоверяющего Центра.', 4, 'ecs', 10592);
INSERT INTO public.export_events_fields VALUES ('Description', 8, 2, 'Описание KSC', 'Описание события Kaspersky Security Center', 3, 'user', 0);
INSERT INTO public.export_events_fields VALUES ('CEFX.SourceZoneExternalID', 8, 2, 'SourceZoneExternalID', '', 2, 'syslog', 2021);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.FilePath', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DestPort', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Initiated', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PreviousCreationUtcTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.WakeTimerOwnerLength', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PreviousTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CalloutKey', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SamAccountName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Param4', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.OriginalSize', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.User.Domain', 8, 2, 'Домен пользователя Windows', 'Домен пользователя Windows', 2, 'wmi', 3018);
INSERT INTO public.export_events_fields VALUES ('WMI.User.Type', 8, 2, 'Тип пользователя Windows', 'Тип пользователя Windows', 2, 'wmi', 3019);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.XMLName', 8, 2, 'Имя XML файла WMI', 'Имя XML файла сообщения Журнала Windows', 2, 'wmi', 3020);
INSERT INTO public.export_events_fields VALUES ('WMI.ProcessorID', 5, 1, 'ID процессора WMI', 'Идентификатор процессора сообщения Журнала Windows', 2, 'wmi', 3005);
INSERT INTO public.export_events_fields VALUES ('WMI.ProcessorTime', 5, 1, 'Время процессора WMI', 'Время процессора сообщения Журнала Windows', 2, 'wmi', 3006);
INSERT INTO public.export_events_fields VALUES ('WMI.ProviderGUID', 8, 2, 'GUID провайдера WMI', 'GUID провайдера сообщения Журнала Windows', 2, 'wmi', 3007);
INSERT INTO public.export_events_fields VALUES ('WMI.SessionID', 5, 1, 'ID сессии WMI', 'Идентификатор сессии сообщения Журнала Windows', 2, 'wmi', 3008);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K4', 8, 2, 'WMI пользовательское №4', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3024);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K5', 8, 2, 'WMI пользовательское №5', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3025);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Param5', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K6', 8, 2, 'WMI пользовательское №6', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3026);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K7', 8, 2, 'WMI пользовательское №7', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3027);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.Engine.Version', 8, 2, 'Версия Powershell', 'Версия движка Windows Powershell', 2, 'wmi', 3055);
INSERT INTO public.export_events_fields VALUES ('AggregationName', 8, 2, 'Метка агрегации', 'Метка агрегации событий ИБ', 1, 'core', 1011);
INSERT INTO public.export_events_fields VALUES ('Count', 5, 1, 'Число агрегированных', 'Число агрегированных событий ИБ по метке агрегации', 1, 'core', 1012);
INSERT INTO public.export_events_fields VALUES ('AssetIPs', 16, 18, 'IP активов', 'IP связанных с событием активов', 1, 'core', 1013);
INSERT INTO public.export_events_fields VALUES ('FwdIP', 15, 7, 'IP форвардера', 'IP форвардера, перенаправившего событие в коллектор', 1, 'core', 1014);
INSERT INTO public.export_events_fields VALUES ('FwdPort', 5, 1, 'Порт форвардера', 'Порт форвардера, перенаправившего событие в коллектор', 1, 'core', 1015);
INSERT INTO public.export_events_fields VALUES ('PluginIDs', 18, 19, 'ID плагинов', 'ID плагинов, сработавших в нормализации события', 1, 'core', 1016);
INSERT INTO public.export_events_fields VALUES ('ECS.Version', 8, 2, 'Версия ECS', 'Версия схемы нормализации ECS в сообщении', 4, 'ecs', 10000);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomNumber4', 1, 1, 'Число cn4', 'CEF пользовательское поле для числа №4.', 2, 'syslog', 2035);
INSERT INTO public.export_events_fields VALUES ('WMI.UserTime', 5, 1, 'Пользовательское время WMI', 'Пользовательское время сообщения Журнала Windows', 2, 'wmi', 3010);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K1', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K2', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Agent.Version', 8, 2, 'Версия агента', 'Версия агента.', 4, 'ecs', 10001);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K3', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.UpdateRevisionNumber', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Agent.BuildOriginal', 8, 2, 'Информация о сборке', 'Расширенная информация о сборке для агента. Это поле предназначено для хранения любой информации о сборке, которую может предоставить источник, специального форматирования не требуется.', 4, 'ecs', 10002);
INSERT INTO public.export_events_fields VALUES ('ECS.Agent.Name', 8, 2, 'Имя агента', 'Имя, которое можно присвоить агенту. Это может быть полезно в случае, когда два экземпляра агента работают на одном хосте, но требуется визуальное разделение, на которое поступают данные экземпляра агента. Если имя не указано, оно часто остается пустым.', 4, 'ecs', 10003);
INSERT INTO public.export_events_fields VALUES ('ECS.Agent.Type', 8, 2, 'Тип агента', 'Тип агента всегда остается неизменным и должен задаваться используемым агентом.', 4, 'ecs', 10004);
INSERT INTO public.export_events_fields VALUES ('ECS.Agent.IP', 15, 7, 'IP адрес агента', 'IP адрес агента (IPv4 или IPv6).', 4, 'ecs', 10006);
INSERT INTO public.export_events_fields VALUES ('ECS.Agent.IP.CountryISOCode', 8, 2, 'Страна агента', 'Двухбуквенный код страны агента в стандарте ISO. Вычисляется с помощью баз GeoIP по полю ECS.Agent.IP. Пример: ''RU'', ''AM'', ''US'', ''CN''.', 4, 'ecs', 10007);
INSERT INTO public.export_events_fields VALUES ('ECS.Agent.IP.City', 8, 2, 'Город агента', 'Город агента. Вычисляется с помощью баз GeoIP по полю ECS.Agent.IP.Пример: ''Moscow'', ''Красноярск'', ''Montreal'', ''Hague''.', 4, 'ecs', 10008);
INSERT INTO public.export_events_fields VALUES ('ECS.Agent.IP.Location', 8, 2, 'Координаты клиента', 'Широта и долгота клиента. Вычисляется с помощью баз GeoIP по полю ECS.Agent.IP. Пример: ''-73.614830,45.505918''.', 4, 'ecs', 10009);
INSERT INTO public.export_events_fields VALUES ('ECS.Agent.EphemeralID', 8, 2, 'Мнимый ID агента', 'Этот ID обычно меняется после перезапуска, в отличие от ECS.Agent.ID', 4, 'ecs', 10011);
INSERT INTO public.export_events_fields VALUES ('ECS.AS.Number', 3, 1, 'ASN', 'Номер автономной системы (ASN), однозначно определяет сеть в глобальной сети. ', 4, 'ecs', 10012);
INSERT INTO public.export_events_fields VALUES ('ECS.AS.OrganizationName', 8, 2, 'Организация', 'Название организации.', 4, 'ecs', 10013);
INSERT INTO public.export_events_fields VALUES ('WMI.ProcessID', 5, 1, 'ID процесса WMI', 'Идентификатор процесса сообщения Журнала Windows', 2, 'wmi', 3014);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K8', 8, 2, 'WMI пользовательское №8', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3028);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K9', 8, 2, 'WMI пользовательское №9', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3029);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K10', 8, 2, 'WMI пользовательское №10', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3030);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K12', 8, 2, 'WMI пользовательское №12', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3032);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NewSize', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K13', 8, 2, 'WMI пользовательское №13', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3033);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K14', 8, 2, 'WMI пользовательское №14', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3034);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K15', 8, 2, 'WMI пользовательское №15', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3035);
INSERT INTO public.export_events_fields VALUES ('WMI.Logon.ID', 8, 2, 'WMI Logon ID', 'Идентификатор события входа Windows', 2, 'wmi', 3051);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K11', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K16', 8, 2, 'WMI пользовательское №16', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3036);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K17', 8, 2, 'WMI пользовательское №17', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3037);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K18', 8, 2, 'WMI пользовательское №18', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3038);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K19', 8, 2, 'WMI пользовательское №19', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3039);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K20', 8, 2, 'WMI пользовательское №20', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3040);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K21', 8, 2, 'WMI пользовательское №21', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3041);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K22', 8, 2, 'WMI пользовательское №22', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3042);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K23', 8, 2, 'WMI пользовательское №23', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3043);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K24', 8, 2, 'WMI пользовательское №24', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3044);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K25', 8, 2, 'WMI пользовательское №25', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3045);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K26', 8, 2, 'WMI пользовательское №26', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3046);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K27', 8, 2, 'WMI пользовательское №27', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3047);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K28', 8, 2, 'WMI пользовательское №28', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3048);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K29', 8, 2, 'WMI пользовательское №29', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3049);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.K30', 8, 2, 'WMI пользовательское №30', 'Пользовательское поле сообщения Журнала Windows', 2, 'wmi', 3050);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Param7', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AdapterName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.TrustType', 8, 2, 'WMI Trust Type', 'Тип доверия Windows https://docs.microsoft.com/ru-ru/windows/security/threat-protection/auditing/event-4706', 2, 'wmi', 3052);
INSERT INTO public.export_events_fields VALUES ('WMI.TrustDirection', 8, 2, 'WMI Trust Direction', 'Направление доверия Windows https://docs.microsoft.com/ru-ru/windows/security/threat-protection/auditing/event-4706', 2, 'wmi', 3053);
INSERT INTO public.export_events_fields VALUES ('WMI.TrustAttribute', 8, 2, 'WMI Trust Attribute', 'Атрибут доверия Windows https://docs.microsoft.com/ru-ru/windows/security/threat-protection/auditing/event-4706', 2, 'wmi', 3054);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.PipelineID', 8, 2, 'Powershell Pipeline ID', 'Идентификатор конвейера обработки событий Windows Powershell, Pipeline ID', 2, 'wmi', 3056);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.RunspaceID', 8, 2, 'Powershell Runspace ID', 'Идентификатор среды исполнения Windows Powershell, Runspace ID', 2, 'wmi', 3057);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.ScriptBlockID', 8, 2, 'ID скрипта Powershell', 'Идентификатор блока скрипта Windows Powershell, Script Block ID', 2, 'wmi', 3058);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.ScriptBlockText', 8, 2, 'Блок скрипта Powershell', 'Текст блока скрипта Windows Powershell', 2, 'wmi', 3059);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.Process.ExecutableVersion', 8, 2, 'Версия исполняемого файла Powershell', 'Версия исполняемого файла Windows Powershell, Process.ExecutableVersion', 2, 'wmi', 3060);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.Command.Value', 8, 2, 'Команда Powershell', 'Команда Windows Powershell', 2, 'wmi', 3061);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.Command.InvocationDetails', 8, 8, 'Детали команды Powershell', 'Детали исполнения команды Windows Powershell', 2, 'wmi', 3065);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.ConnectedUser.Domain', 8, 2, 'Домен пользователя Powershell', 'Домен подключённого пользователя Windows Powershell', 2, 'wmi', 3066);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.ConnectedUser.Name', 8, 2, 'Имя пользователя Powershell', 'Имя подключённого пользователя Windows Powershell', 2, 'wmi', 3067);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.Engine.NewState', 8, 2, 'Новое состояние Powershell', 'Состояние движка Windows Powershell после операции перехода состояния', 2, 'wmi', 3068);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.FilterRTID', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.Engine.PreviousState', 8, 2, 'Предыдущее состояние Powershell', 'Состояние движка Windows Powershell до операции перехода состояния', 2, 'wmi', 3069);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.Provider.NewState', 8, 2, 'Новое состояние провайдера Powershell', 'Состояние провайдера Windows Powershell после операции перехода состояния', 2, 'wmi', 3070);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.Provider.Name', 8, 2, 'Провайдер Powershell', 'Название провайдера Windows Powershell', 2, 'wmi', 3071);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.Total', 2, 1, 'Всего в Powershell', 'Всего деталей в событии Windows Powershell', 2, 'wmi', 3072);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.Sequence', 2, 1, 'Последовательность Powershell', 'Последовательность в цепочке событий Windows Powershell', 2, 'wmi', 3073);
INSERT INTO public.export_events_fields VALUES ('WMI.Powershell.ID', 8, 2, 'ID окна Powershell', 'ID окна Windows Powershell', 2, 'wmi', 3074);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SubjectUserName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetDomainName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Service', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PrivilegeList', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProcessId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetUserSid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ObjectServer', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetUserName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetLogonId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SubjectLogonId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProcessName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.EnabledPrivilegeList', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DisabledPrivilegeList', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Binary', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SubjectUserSid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SubjectDomainName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SessionId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SubStatus', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetOutboundUserName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ImpersonationLevel', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetLinkedLogonId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.EventIdx', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.FailureReason', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LogonType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetServerName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetInfo', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CategoryId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ErrorDescription', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SubcategoryGuid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AuditPolicyChanges', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ExtensionName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProcessingTimeInMilliseconds', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SubcategoryId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SupportInfo2', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ErrorCode', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DCName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ExtensionId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Param3', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Param6', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Param1', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Param9', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Param2', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ServiceGuid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.HiveName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DirtyPages', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.ThreadID', 5, 1, 'ID потока WMI', 'Идентификатор потока сообщения Журнала Windows', 2, 'wmi', 3015);
INSERT INTO public.export_events_fields VALUES ('WMI.User.Identifier', 8, 2, 'ID пользователя Windows', 'Идентификатор пользователя Windows', 2, 'wmi', 3016);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.HiveNameLength', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.RecordID', 3, 1, '№ записи Win Eventlog', 'Номер записи в Журнале Windows, автоинкрементное поле, начинается с 1', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Keywords', 9, 2, 'WMI Ключевые слова', 'Массив ключевых слов события Журнала Windows', 2, 'wmi', 3001);
INSERT INTO public.export_events_fields VALUES ('WMI.Channel', 8, 2, 'Канал WMI', 'Канал доставки события в Журнал Windows', 2, 'wmi', 3002);
INSERT INTO public.export_events_fields VALUES ('ECS.Base.Message', 8, 2, 'Сообщение журнала', 'Извлечённое сообщение журнала.', 4, 'ecs', 10014);
INSERT INTO public.export_events_fields VALUES ('WMI.KernelTime', 5, 1, 'WMI Время ядра', 'Время ядра сообщения Журнала Windows', 2, 'wmi', 3003);
INSERT INTO public.export_events_fields VALUES ('WMI.Opcode', 5, 1, 'WMI Код операции', 'Код операции сообщения Журнала Windows', 2, 'wmi', 3004);
INSERT INTO public.export_events_fields VALUES ('WMI.Version', 19, 1, 'Версия WMI', 'Версия Журнала Windows', 2, 'wmi', 3011);
INSERT INTO public.export_events_fields VALUES ('WMI.ActivityID', 8, 2, 'Идентификатор активности WMI', 'Идентификатор активности сообщения Журнала Windows', 2, 'wmi', 3012);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.FirstRefresh', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.RelatedActivityID', 8, 2, 'Идентификатор связанной активности WMI', 'Идентификатор связанной активности сообщения Журнала Windows', 2, 'wmi', 3013);
INSERT INTO public.export_events_fields VALUES ('WMI.User.Name', 8, 2, 'Имя пользователя Windows', 'Имя пользователя Windows', 2, 'wmi', 3017);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Version', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.UpdateGuid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Product', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SourceIsIpv6', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProcessingMode', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Param10', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Param11', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ParentProcessGuid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ImageLoaded', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ConfigurationFileHash', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NewTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CommandLine', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.GPOCNName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.UTCStartTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CurrentDirectory', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.State', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Base.Timestamp', 11, 5, 'Время события ECS', 'Извлечённое из события время в схеме Elastic Common Schema. Описывает время на источнике события.', 4, 'ecs', 10015);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SourcePortName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.EmbeddedContext', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.WakeDuration', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Error', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Base.Tags', 9, 2, 'Теги', 'Список тегов (меток) для дополнительной категоризации событий.', 4, 'ecs', 10016);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DriverInitDuration', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ServiceName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.StartType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ImagePath', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.UpdateTitle', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.KeysUpdated', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Workstation', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ServiceType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ParentImage', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AccessGranted', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.HostName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DnsServerList', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Ipaddress', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AdapterSuffixName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SentUpdateServer', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProgrammedWakeTimeAc', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SchemaVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Image', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LogonId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Details', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SuspendStart', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DestinationIp', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.IntegrityLevel', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.QueryResults', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SourceHostname', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.WakeFromState', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Description', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DestinationPort', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DestinationHostname', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ParentUser', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CreationUtcTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Signature', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.QueryName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DestinationIsIpv6', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.UtcTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProcessGuid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.EventType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ClassName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.HardwareIds', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AddressLength', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ResumeCount', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RetryMinutes', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ErrorMessage', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NewValue', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PatternFriendlyName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.IpAddrLength', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ClientCreationTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CurrentTimeZoneID', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TerminalSessionId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DestinationPortName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SrcAddress', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AdapterLuid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Base.Labels', 23, 2, 'Ключ-значение', 'Дополнительное описание события в формате ключ-значение.', 4, 'ecs', 10017);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.Address', 8, 2, 'Адрес клиента', 'Некоторые адреса клиентов событий определены неоднозначно. События будут иногда иметь атрибут (IP, домен или сокет unix). Стоит всегда сохранять исходный адрес в поле "ECS.Client.Address", его следует продублировать в ECS.Client.IP или в ECS.Client.Domain, основываясь на соответствии ', 4, 'ecs', 10018);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.IP', 15, 7, 'IP адрес клиента', 'IP адрес клиента (IPv4 или IPv6).', 4, 'ecs', 10019);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Address', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.IssuerOrganizationalUnit', 8, 2, 'Список УЦ', 'Список удостоверяющих центров(OU).', 4, 'ecs', 10593);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RmSessionId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.UserSid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DlAddrLength', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SrcDLAddress', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DestDLAddress', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DomainPeer', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.OldValue', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ModifyingApplication', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ModifyingUser', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Origin', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LocalOnlyMapped', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Hashes', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RuleStatus', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.EdgeTraversal', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RemoteAddresses', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SignatureStatus', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.QueryStatus', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LocalAddresses', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SecurityOptions', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Active', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.FilterKey', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetObject', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SourceIp', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Company', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetFilename', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LooseSourceMapped', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Profiles', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SettingType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.InterfaceName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.OldProfile', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SettingValueDisplay', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Protocol', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.HomePath', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NewProfile', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SettingValueSize', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LocalPorts', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RemotePorts', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ExitReason', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.InterfaceGuid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SettingValue', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ReadOperation', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LogonHours', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Resource', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.FilterType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProfileChanged', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProcessID', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Status', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TokenElevationType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LogonProcessName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.IpAddress', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TransmittedServices', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.VirtualAccount', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.WorkstationName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ClientProcessStartKey', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SupportInfo1', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.HandleId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RuleAttr', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SourceProcessId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetProcessId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TransactionId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.UserName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.FileName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ParentProcessId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SourcePort', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.IP.CountryISOCode', 8, 2, 'Страна клиента', 'Двухбуквенный код страны клиента в стандарте ISO. Вычисляется с помощью баз GeoIP по полю ECS.Client.IP. Пример: ''RU'', ''AM'', ''US'', ''CN''.', 4, 'ecs', 10020);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.IP.City', 8, 2, 'Город клиента', 'Город клиента. Вычисляется с помощью баз GeoIP по полю ECS.Client.IP.Пример: ''Moscow'', ''Красноярск'', ''Montreal'', ''Hague''.', 4, 'ecs', 10021);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProviderKey', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AccessReason', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Dummy', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.EffectiveState', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetState', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RestrictedSidCount', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SourceAddress', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LayerName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Action', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Application', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CalloutName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TaskContentNew', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TransitionsToOn', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Attributes', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CheckpointDuration', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AverageResume', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ScriptPath', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AccountExpires', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PrimaryGroupId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.MemberName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.FQDN', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SourceHandleId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProviderName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.FilterName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.FilterId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Direction', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LatestPlatformVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProfilePath', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AllowedToDelegateTo', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SidHistory', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProcessCreationTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.HiberWriteDuration', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProgrammedWakeTimeDc', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SuspendEnd', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.BiosInitDuration', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NRISecurityIntelligenceVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LastQuickScanAge', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CurrentEngineVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PlatformVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LastAVSecurityIntelligenceAge', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SecurityIntelligenceTypeIndex', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RpcCallClientLocality', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LayerKey', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Weight', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TaskName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetHandleId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.WakeSourceTextLength', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.FullResume', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ApplicationPath', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NewProcessId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NewProcessName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AuthenticationPackageName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.GroupMembership', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LmPackageName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.KeyLength', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RestrictedAdminMode', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LogonGuid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ObjectName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.OldSd', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ObjectType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ClientProcessId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AccessMask', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TimeSource', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.WakeSourceText', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CurrentStratumNumber', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.UserAccountControl', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DestAddress', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AccountName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RemoteUserID', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RemoteMachineID', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ChangeType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Conditions', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AccessList', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ResourceAttributes', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.IP.Location', 8, 2, 'Координаты клиента', 'Широта и долгота клиента. Вычисляется с помощью баз GeoIP по полю ECS.Client.IP. Пример: ''-73.614830,45.505918''.', 4, 'ecs', 10022);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LinkName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LayerId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PasswordLastSet', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CloudProtectionIntelligenceTypeIndex', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ScanType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Domain', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NRIEngineVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Timestamp', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ASSecurityIntelligenceCreationTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LastQuickScanEndTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.IssuerOrganization', 8, 2, 'Подразделение УЦ', 'Название подразделения компании УЦ(O)', 4, 'ecs', 10594);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LatestEngineVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CloudProtectionIntelligenceCompilationTimestamp', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ScanParametersIndex', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.IOAVState', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LastQuickScanSource', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProductVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CurrentSecurityIntelligenceVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.HomeDirectory', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.UserPrincipalName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.User', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LogonID', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SessionName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ClientAddress', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PersistencePath', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PersistenceLimitType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PersistenceLimitValue', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.OAState', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LastQuickScanStartTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LastFullScanStartTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.UserWorkstations', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AccountDomain', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LastFullScanSource', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.FinalStatus', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DeviceVersionMajor', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DeviceVersionMinor', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DeviceNameLength', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DeviceName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DeviceTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ClientName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SecurityIntelligenceType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.UpdateTypeIndex', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ParentProcessName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.MandatoryLabel', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.IssuerLocality', 8, 2, 'Населённые пункты', 'Список названий населенных пунктов.(L)', 4, 'ecs', 10595);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.EventCountTotal', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.IpPort', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetOutboundDomainName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ElevatedToken', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NewSd', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RuleId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RuleName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PreviousEngineVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SleepDuration', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ScanTimeHours', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PersistenceLimitTypeIndex', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ScanID', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.UpdateType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PreviousSecurityIntelligenceVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NumberOfGroupPolicyObjects', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ScanParameters', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PolicyChange', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.EngineVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SID', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AVSecurityIntelligenceVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LastFullScanAge', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProductStatus', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CloudProtectionIntelligenceType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ScanTypeIndex', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProductName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LastASSecurityIntelligenceAge', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Category', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AVSecurityIntelligenceCreationTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LastFullScanEndTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.EngineUpToDate', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SecurityIntelligenceVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.IssuerStateOrProvince', 8, 2, 'Области и штаты', 'Список названий областей или штатов (ST, S, or P)', 4, 'ecs', 10596);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.StoreType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.OldTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.HiberPagesWritten', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.IssuerCountry', 8, 2, 'Код страны', 'Код стран (C).', 4, 'ecs', 10597);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.HiberReadDuration', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.WakeRequesterTypeDc', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.WakeRequesterTypeAc', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.WakeSourceType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Reason', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RTPState', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.BMState', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PlatformUpToDate', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CloudProtectionIntelligenceVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ASSecurityIntelligenceVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.FullPath', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Pid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ShutdownEventCode', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SleepTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NoMultiStageResumeReason', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.WakeTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.WakeTimerContextLength', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ScanTimeMinutes', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ScanTimeSeconds', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DisplayName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.InstanceName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.InstanceNameLength', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DriverName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TimeProvider', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DriverNameLength', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.OldUacValue', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.MemberSid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NewUacValue', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.UserParameters', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RelaxMinimumPasswordLengthLimits', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Channel', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.MaximumPerformancePercent', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Number', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RemoteEventLogging', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NominalFrequency', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DriveName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.MajorVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TimeZoneInfoCacheUpdated', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.MinimumThrottlePercent', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CountOld', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Config', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TestSigning', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CalloutId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.MinimumPasswordLength', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.IdleImplementation', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.BootMode', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AdvancedOptions', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.EnabledNew', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProviderContextType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RemoteAdminEnabled', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ServiceVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.MinorVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.BootStatusPolicy', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.VsmPolicy', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.BuildVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SubLayerType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.QfeVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.RegisteredDomain', 8, 2, 'Самый высокий зарегистрированный домен клиента ', 'Самый высокий зарегистрированный домен клиента очищенный от поддомена. Например, для домена источника "foo.example.com" значение зарегистрированного домена будет "example.com". Алгоритм определения зарегистрированного домена использует список суффиксов из http://publicsuffix.org .', 4, 'ecs', 10026);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.BootMenuPolicy', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.IsTestConfig', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.BitlockerUserInputTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DefaultSDString', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.MinimumPasswordLengthAudit', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.TopLevelDomain', 8, 2, 'Наивысший домен', 'Домен первого уровня,например для "example.com" таким доменом будет считаться "com".', 4, 'ecs', 10027);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.UpdateReason', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.BootType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.KeyName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.KeyType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.KeyFilePath', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProtectedDataFlags', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DisableIntegrityChecks', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.HypervisorLoadOptions', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CallerProcessId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SchemaFriendlyName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Type', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CountOfCredentialsReturned', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Schema', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.VendorIds', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ExtraInfo', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProfileGuid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LocationInformation', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProviderType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Name', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NewInternetConnectionProfile', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DataDescription', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.HostNameChanged', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.WwanRegistrationStateChanged', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ErrorCodev4', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TetheringOperationalStateChanged', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ErrorCodev6', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TetheringClientCountChanged', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Guid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DomainConnectivityLevelChanged', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ConnectionCostChanged', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NetworkConnectivityLevelChanged', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Flags', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Context', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CurrentOrNextState', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Operation', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LogDroppedPacketsEnabled', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CompatibleIds', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TSId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TimeSourceRefId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TSSessionId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NApplications', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AppVersion', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AppType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.RebootReasons', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Applications', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Files', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NFiles', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Turn', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.NewState', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ResourceManager', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ConfigAccessPolicy', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CalloutType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.Subdomain', 8, 2, 'Поддомен', 'Поддомен, например для "sub2.sub1.example.com" таким доменом будет считаться "sub2.sub1".', 4, 'ecs', 10028);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Profile', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProviderContextName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TicketEncryptionType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.EventSourceId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Interface', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.EnableDisableReason', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ListenerAdapterProtocol', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ServiceSid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AdditionalInfo', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AuditSourceName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Param0', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.OperationType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PreAuthType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProtocolType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Properties', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TicketOptions', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.KernelDebug', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.BinaryData', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Param12', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Spn2', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Spn1', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.BinaryDataSize', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CachingSubsystemState', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PerfStateCount', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ActiveProfile', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ThrottleStateCount', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.InstallSubsystemState', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Identity', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.StopTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LoadOptions', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.HypervisorDebug', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProfileUsed', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PuaPolicyId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ShutdownActionType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LastBootGood', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LastBootId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CountNew', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetProcessName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ClassId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CallerProcessName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetSid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.OperationMode', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DwordVal', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.MinimumPerformancePercent', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PerformanceImplementation', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.MasterKeyId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.MulticastFlowsEnabled', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LastShutdownGood', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.EntryCount', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.HypervisorLaunchType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ReasonForRejection', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.AlgorithmName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.PuaCount', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CorruptionActionState', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.IdleStateCount', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.VsmLaunchType', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.GroupPolicyApplied', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.StartTime', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.Group', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CurrentBias', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ShutdownReason', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.FlightSigning', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ProviderContextKey', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.LogSuccessfulConnectionsEnabled', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.CryptoAlgorithms', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DeviceId', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SubLayerName', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.SubLayerKey', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.Bytes', 3, 1, 'Байт от клиента', 'Количество байт отправленных от клиента серверу.', 4, 'ecs', 10029);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.Packets', 3, 1, 'Пакетов от клиента', 'Количество пакетов отправленных от клиента серверу.', 4, 'ecs', 10030);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.NatIP', 15, 7, 'NAT сессия узла', 'IP сессий NAT узла назначения (например, интернет в частную dmz). Обычно включает в себя пути балансировщиков нагрузки, межсетевых экранов, роутеров.', 4, 'ecs', 10031);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.ReturnCode', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.DeviceDescription', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.NatPort', 3, 1, 'Порт NAT узла клиента', 'Порт сессий NAT узла назначения. Обычно включает в себя пути балансировщиков нагрузки, межсетевых экранов, роутеров.', 4, 'ecs', 10032);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.User.ID', 8, 2, 'ID пользователя клиента', 'Идентификатор пользователя клиента, например, ''S-1-5-21-202424912787-2692429404-2351956786-1000''.', 4, 'ecs', 10033);
INSERT INTO public.export_events_fields VALUES ('WMI.Data.TargetLogonGuid', 8, 2, '', '', 2, 'wmi', 3000);
INSERT INTO public.export_events_fields VALUES ('ECS.Filesystem.MountPoint', 8, 2, 'Путь монтирования', 'Путь монтирования файловой системы, например, `/`.', 4, 'ecs', 10173);
INSERT INTO public.export_events_fields VALUES ('ECS.Log.File.Path', 8, 2, 'Путь файла', 'Полный путь к наблюдаемому файлу журнала, включая имя файла', 4, 'ecs', 10235);
INSERT INTO public.export_events_fields VALUES ('ECS.Log.SyslogVersion', 20, 1, 'Версия syslog', 'Версия syslog.', 4, 'ecs', 10246);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.CpuUsage', 7, 9, 'Использование процессора, %', ' Процент использования ЦП, нормализованный по количеству ядер ЦП и колеблется от 0 до 1. Коэффициент масштабирования: 1000.', 4, 'ecs', 10182);
INSERT INTO public.export_events_fields VALUES ('ECS.Filesystem.Free', 3, 1, 'Свободное место', 'Свободное место на диске доступное для пользователя в байтах.', 4, 'ecs', 10168);
INSERT INTO public.export_events_fields VALUES ('ECS.Filesystem.Available', 3, 1, 'Доступно места', 'Всего места на диске доступного для пользователя в байтах.', 4, 'ecs', 10167);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.TacticName', 8, 2, 'Название тактики', 'Название типа тактики, использованной этой угрозой. Например, для MITRE ATT&CK®, https://attack.mitre.org/tactics/TA0002/.', 4, 'ecs', 10317);
INSERT INTO public.export_events_fields VALUES ('ECS.Filesystem.Used.Pct', 1, 1, '% использовано', 'Отношение использованного дискового пространства к общему размеру диска, в процентах от 0 до 100.', 4, 'ecs', 10171);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.User.Name', 8, 2, 'Пользователь клиента', 'Сокращённое имя пользователя или логин на клиенте, например, p.picasso .', 4, 'ecs', 10034);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.User.FullName', 8, 2, 'Имя пользователя клиента', 'Полное имя пользователя на клиенте, например Pablo Picasso.', 4, 'ecs', 10035);
INSERT INTO public.export_events_fields VALUES ('ECS.Filesystem.Type', 8, 2, 'Файловая система', 'Тип файловой системы, например `ext4`', 4, 'ecs', 10172);
INSERT INTO public.export_events_fields VALUES ('ECS.Geo.Longitude', 7, 2, 'Долгота', 'Долгота — координата в ряде систем сферических координат, определяющая положение IP адреса на поверхности Земли', 4, 'ecs', 10123);
INSERT INTO public.export_events_fields VALUES ('ECS.Hash.XXH64', 8, 3, 'XXH64', 'XXH64 хеш.', 4, 'ecs', 10132);
INSERT INTO public.export_events_fields VALUES ('ECS.Filesystem.Total', 3, 1, 'Размер диска', 'Размер диска в байтах.', 4, 'ecs', 10169);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.HandshakeRTT', 3, 1, 'TLS Handshake RTT, мс', 'Продолжительность процесса установки TLS соединения (TLS Handshake RTT)  в миллисекундах. ', 4, 'ecs', 10354);
INSERT INTO public.export_events_fields VALUES ('ECS.Filesystem.DeviceType', 8, 2, 'Имя диска', 'Имя диска, например `/dev/disk1`.', 4, 'ecs', 10170);
INSERT INTO public.export_events_fields VALUES ('ECS.PE.Platform', 8, 2, 'Внутренняя версия PE-файла', 'Внутренняя версия PE-файла, присвоенная во время компиляции.', 4, 'ecs', 10228);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.User.Email', 8, 2, 'Почта пользователя клиента', 'Почта пользователя на клиенте.', 4, 'ecs', 10036);
INSERT INTO public.export_events_fields VALUES ('ECS.User.Type', 8, 2, 'Тип пользователя', 'Тип пользователя - физический человек, бот, аккаунт, группа, домен, псевдоним и прочие описательные характеристики авторизованного на действие агента.', 4, 'ecs', 10379);
INSERT INTO public.export_events_fields VALUES ('ECS.Geo.Latitude', 7, 2, 'Широта', 'Широта — координата в ряде систем сферических координат, определяющая положение IP адреса на поверхности Земли', 4, 'ecs', 10122);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.PPID', 3, 1, 'PID родителя', 'PID родителя.', 4, 'ecs', 10262);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.TechniqueSubtechniqueName', 8, 2, 'Имя вспомогательной тактики', 'Название вспомогательной техники, используемой этой угрозой. Например, для MITRE ATT&CK®, https://attack.mitre.org/techniques/T1059/001/).', 4, 'ecs', 10323);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.TechniqueSubtechniqueReference', 8, 2, 'URL вспомогательной тактики', 'URL вспомогательной техники, используемой  угрозой. Можно использовать MITER ATT&CK® Например, для MITRE ATT&CK®, https://attack.mitre.org/techniques/T1059/001/.', 4, 'ecs', 10324);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Group.ID', 8, 2, 'ID группы атаки', 'Идентификатор группы набора активностей ассоциируемых со вторжением которые отслеживаются в сообществе специалистов ИБ под неким общим названием. Можно использовать MITRE ATT&CK® group id.', 4, 'ecs', 10309);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.TechniqueID', 8, 2, 'ID техники угрозы', 'ID техники, использованной этой угрозой. Например, для MITRE ATT&CK®,  https://attack.mitre.org/techniques/T1059/ .', 4, 'ecs', 10319);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ServerSubjec', 8, 2, 'Субъект сертификата x.509', 'Субъект сертификата x.509, представленного сервером.', 4, 'ecs', 10345);
INSERT INTO public.export_events_fields VALUES ('ECS.User.PasswordLength', 20, 1, 'Длина пароля', 'Длина пароля пользователя.', 4, 'ecs', 10380);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Group.Alias', 8, 2, 'Псевдоним(ы) группы атаки', 'Один или несколько (через запятую) псевдонимов группы набора активностей ассоциируемых со вторжением которая отслеживается в сообществе специалистов ИБ под неким общим названием. Можно использовать MITRE ATT&CK® group alias(es).', 4, 'ecs', 10308);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Group.Name', 8, 2, 'Группа атаки', 'Имя группы набора активностей ассоциируемых со вторжением которые отслеживаются в сообществе специалистов ИБ под неким общим названием. Можно использовать MITRE ATT&CK® group name.', 4, 'ecs', 10310);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.TacticID', 8, 2, 'ID тактики', 'ID тактики, использованной этой угрозой. Например, для MITRE ATT&CK®, https://attack.mitre.org/tactics/TA0002/', 4, 'ecs', 10316);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.TacticReference', 8, 2, 'URL тактики', 'URL-адрес тактики, использованной этой угрозой.  Например, для MITRE ATT&CK®, https://attack.mitre.org/tactics/TA0002/ .', 4, 'ecs', 10318);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.TechniqueName', 8, 2, 'Название техники угрозы', 'Название техники, использованной этой угрозой. Например, для MITRE ATT&CK®, https://attack.mitre.org/techniques/T1059/ .', 4, 'ecs', 10320);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.TechniqueReference', 8, 2, 'URL техники атаки', ' URL-адрес c информацией о технике, используемой этой угрозой. Например, для MITRE ATT&CK®, https://attack.mitre.org/techniques/T1059/ .', 4, 'ecs', 10321);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.TechniqueSubtechniqueID', 8, 2, 'ID вспомогательной техники', 'Полный ID вспомогательной техники, используемой угрозой. Например, для MITRE ATT&CK®,  https://attack.mitre.org/techniques/T1059/001/ .', 4, 'ecs', 10322);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.IO.Bytes', 8, 4, 'Байты ввода/вывода', 'Отрезок вывода операциив ввода/вывода в формате UTF-8. Поле может содержать не все строки ввода/вывода, часто может попадать в последующие сообщения.', 4, 'ecs', 10361);
INSERT INTO public.export_events_fields VALUES ('ECS.Cloud.ProjectName', 8, 2, 'Имя проекта', 'Имя облачного проекта, например, Google Cloud Project name, Azure Project name.', 4, 'ecs', 10050);
INSERT INTO public.export_events_fields VALUES ('ECS.Organization.Name', 8, 2, 'Имя организации', 'Имя организации.', 4, 'ecs', 10305);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.User.Domain', 8, 2, 'Каталог пользователя сервера', 'Домен каталога пользователей к которому принадлежит пользователь сервера, например, доменное имя LDAP или Active Directory.', 4, 'ecs', 10424);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.User.Roles', 9, 2, 'Роли пользователя сервера', 'Массив ролей пользователя на сервере в момент события.', 4, 'ecs', 10425);
INSERT INTO public.export_events_fields VALUES ('Producer', 8, 2, 'Место возникновения', 'Точка генерации события ИБ в Комрад - коллектор, коррелятор, Сканер ВС', 1, 'core', 1010);
INSERT INTO public.export_events_fields VALUES ('ECS.Agent.ID', 8, 2, 'ID агента', 'ID агента.', 4, 'ecs', 10005);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.Port', 5, 1, 'Порт клиента', 'Порт клиента.', 4, 'ecs', 10023);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.MAC', 8, 10, 'MAC адрес клиента', 'MAC адрес клиента.', 4, 'ecs', 10024);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.Domain', 8, 2, 'Домен клиента', 'Доменное имя клиента.', 4, 'ecs', 10025);
INSERT INTO public.export_events_fields VALUES ('ECS.Cloud.InstanceName', 8, 2, 'Имя экземпляра узла', 'Имя экземпляра узла.', 4, 'ecs', 10044);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.AttachmentsFileMimeType', 8, 2, 'MIME-тип вложенного файла', 'Это значение обычно извлекается из поля заголовка MIME Content-Type. пример: "текст/обычный".', 4, 'ecs', 10077);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.User.Hash', 8, 2, 'Хеш пользователя клиента', 'Уникальный хеш пользователя на клиенте для сопоставления информации о пользователе в анонимной форме. Полезно, если *.User.ID или *.User.Name содержат  конфиденциальную информацию и не могут быть использованы.', 4, 'ecs', 10037);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomNumber8', 1, 1, 'Число cn8', 'CEF пользовательское поле для числа №8.', 2, 'syslog', 2039);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.User.Domain', 8, 2, 'Каталог пользователя клиента', 'Домен каталога пользователей к которому принадлежит пользователь клиента, например, доменное имя LDAP или Active Directory.', 4, 'ecs', 10038);
INSERT INTO public.export_events_fields VALUES ('ECS.Client.User.Roles', 9, 2, 'Роли пользователя клиента', 'Массив ролей пользователя на клиенте в момент события.', 4, 'ecs', 10039);
INSERT INTO public.export_events_fields VALUES ('ECS.Orchestrator.ClusterName', 8, 2, 'Имя кластера', 'Имя кластера.', 4, 'ecs', 10101);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.User.Roles', 9, 2, 'Роли пользователя назначения', 'Массив ролей пользователя на узле назначения в момент события.', 4, 'ecs', 10146);
INSERT INTO public.export_events_fields VALUES ('ECS.Cloud.Provider', 8, 2, 'Название облачного провайдера', 'Название облачного провайдера, например Яндекс.Облако, Mail.ru облако, СберКлауд, Amazon, Amazon Web Services и д.р.', 4, 'ecs', 10040);
INSERT INTO public.export_events_fields VALUES ('ECS.Error.Message', 8, 2, 'Сообщение об ошибке', 'Сообщение об ошибке.', 4, 'ecs', 10168);
INSERT INTO public.export_events_fields VALUES ('ECS.Cloud.AvailabilityZone', 8, 2, 'Доступность зоны расположения узла', 'Доступность зоны расположения узла.', 4, 'ecs', 10041);
INSERT INTO public.export_events_fields VALUES ('ECS.Cloud.Region', 8, 2, 'Регион расположения узла', 'Регион расположения узла.', 4, 'ecs', 10042);
INSERT INTO public.export_events_fields VALUES ('ECS.Cloud.MachineType', 8, 2, 'Тип машины узла', 'Тип машины узла.', 4, 'ecs', 10045);
INSERT INTO public.export_events_fields VALUES ('ECS.Cloud.AccountID', 8, 2, 'ID аккаунта', 'Аккаунт или ID организации, для идентификации различных сущностей, например, Google ID.', 4, 'ecs', 10046);
INSERT INTO public.export_events_fields VALUES ('ECS.Cloud.AccountName', 8, 2, 'Имя аккаунта', 'Имя аккаунта, для идентификации различных сущностей, например, AWS.', 4, 'ecs', 10047);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Owner', 8, 2, 'Владелец', 'Владелец файла.', 4, 'ecs', 10243);
INSERT INTO public.export_events_fields VALUES ('ECS.Cloud.ServiceName', 8, 2, 'Имя службы', 'Имя службы, необходимо для разграничения служб работающих на разных платформах, например, облачная служба, облачный запуск.', 4, 'ecs', 10048);
INSERT INTO public.export_events_fields VALUES ('ECS.Cloud.ProjectID', 8, 2, 'ID  проекта', 'ID облачного проекта, например, Google Cloud Project id, Azure Project id.', 4, 'ecs', 10049);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.CreationDate', 11, 5, 'Дата сборки', 'По возможности извлекается из метаданных файла. Указывает, когда  был построен или скомпилирован. Он также может быть подделан создателями вредоносных программ.', 4, 'ecs', 10051);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.HeaderClass', 8, 2, 'Заголовочный класс ELF', 'Заголовочный класс файла ELF', 4, 'ecs', 10055);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.Architecture', 8, 2, 'Архитектура ELF', 'Машинная архитектура файла ELF. Пример "x86-64" ', 4, 'ecs', 10052);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.ByteOrder', 8, 2, 'Последовательность байтов ELF', 'Последовательность байтов файла ELF.Пример "Little Endian" ', 4, 'ecs', 10053);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.CpuType', 8, 2, 'Тип ЦП файла ELF', 'Тип ЦП файла ELF. Пример : " Intel " ', 4, 'ecs', 10054);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.HeaderData', 8, 2, 'Данные заголовка ELF', 'Таблица данных заголовка ELF.', 4, 'ecs', 10056);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.HeaderABIVersion', 8, 2, 'Версия ABI ELF', 'Версия бинарного интерфейса приложения (ABI) ELF.', 4, 'ecs', 10057);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.HeaderEntrypoint', 2, 1, 'Точка входа заголовка ELF', 'Точка входа заголовка файла ELF.', 4, 'ecs', 10058);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.HeaderObjectVersion', 8, 2, '0x1 заголовок ELF', '"0x1" для оригинальных файлов ELF.', 4, 'ecs', 10059);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.SectionsFlags', 8, 2, 'Флаги разделов ELF', 'Флаги списка разделов ELF.', 4, 'ecs', 10060);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.SectionsName', 8, 2, 'Название списка разделов ELF', 'Название списка разделов ELF.', 4, 'ecs', 10061);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.SectionsPhysicalOffset', 8, 2, 'Смещение списка  разделов ELF', 'Смещение списка разделов ELF.', 4, 'ecs', 10062);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.SectionsType', 8, 2, 'Тип списка разделов ELF', 'Тип списка разделов ELF.', 4, 'ecs', 10063);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.SectionsPhysicalSize', 2, 1, 'Физический размер списка разделов ELF', 'Физический размер списка разделов ELF.', 4, 'ecs', 10064);
INSERT INTO public.export_events_fields VALUES ('SNMP.Community', 8, 2, 'SNMP Community', 'Строка Community для SNMP v1 и v2c согласно RFC 1157 или RFC 1901.', 2, 'snmp', 5000);
INSERT INTO public.export_events_fields VALUES ('SNMP.GenericTrap', 1, 1, 'SNMP Generic Trap', 'SNMP Generic Trap.', 2, 'snmp', 5001);
INSERT INTO public.export_events_fields VALUES ('SNMP.SpecificTrap', 1, 1, 'SNMP Specific Trap', 'SNMP Specific Trap.', 2, 'snmp', 5002);
INSERT INTO public.export_events_fields VALUES ('SNMP.ContextEngineID', 8, 2, 'SNMP ContextEngineID', 'SNMP ContextEngineID.', 2, 'snmp', 5003);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.SectionsVirtualAddress', 2, 1, 'Виртуальный адрес ELF списка разделов', 'Виртуальный адрес ELF списка разделов.', 4, 'ecs', 10065);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.SectionsVirtualSize', 2, 1, 'Виртуальный размер списка разделов ELF', 'Виртуальный размер списка разделов ELF.', 4, 'ecs', 10066);
INSERT INTO public.export_events_fields VALUES ('SNMP.ContextName', 8, 2, 'SNMP Context Name', 'SNMP Context Name.', 2, 'snmp', 5004);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.SectionsEntropy', 2, 1, 'Энтропия ELF', 'Расчет энтропии Шеннона из раздела.', 4, 'ecs', 10067);
INSERT INTO public.export_events_fields VALUES ('SQL.TaskName', 8, 2, 'Задача', 'Имя задачи сбора событий из SQL базы данных', 2, 'sql', 4000);
INSERT INTO public.export_events_fields VALUES ('SQL.IP', 15, 7, 'IP БД', 'IP адрес сервера БД.', 2, 'sql', 4001);
INSERT INTO public.export_events_fields VALUES ('SQL.Port', 20, 1, 'Порт БД', 'Порт сервера БД.', 2, 'sql', 4002);
INSERT INTO public.export_events_fields VALUES ('SQL.Host', 8, 2, 'Хост БД', 'Хост сервера БД.', 2, 'sql', 4003);
INSERT INTO public.export_events_fields VALUES ('SQL.Database', 8, 2, 'База данных', 'Логическая база данных в сервере БД.', 2, 'sql', 4004);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.AttachmentsFileName', 8, 2, 'Имя вложенного файла', 'Имя вложенного файла, включая расширение файла. пример: "attachment.txt".', 4, 'ecs', 10078);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.AttachmentsFileSize', 2, 1, 'Размер вложенного файла.', 'Размер вложенного файла в байтах.  пример: "64329"', 4, 'ecs', 10079);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.BccAddress', 8, 2, 'Адрес электронной почты получателя скрытой копии.', 'Адрес электронной почты получателя скрытой копии. пример:"bcc.user1@example.com"', 4, 'ecs', 10080);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.SectionsChi2', 2, 1, 'хи-квадрат ELF', 'Распределение вероятности хи-квадрат сечения.', 4, 'ecs', 10068);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.Exports', 8, 2, 'Экспорты ELF', 'Список имен и типов экспортируемых элементов..', 4, 'ecs', 10069);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.SharedLibraries', 8, 2, 'Библиотеки ELF', 'Список общих библиотек, используемых этим объектом ELF.', 4, 'ecs', 10071);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.Telfhash', 8, 2, 'Хэш символа telfhash для файла ELF', 'Хэш символа telfhash для файла ELF.', 4, 'ecs', 10072);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.SegmentsType', 8, 2, 'Тип сегмента объекта ELF', 'Тип сегмента объекта ELF.', 4, 'ecs', 10073);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.SegmentsSections', 8, 2, 'Сегменты объектов ELF', 'Сегменты объектов ELF.', 4, 'ecs', 10074);
INSERT INTO public.export_events_fields VALUES ('CEF.DeviceVendor', 8, 2, 'Производитель', 'Производитель устройства, явившегося источником события', 2, 'syslog', 2000);
INSERT INTO public.export_events_fields VALUES ('CEF.DeviceProduct', 8, 2, 'ПО', 'Программное обеспечение, явившееся источник события', 2, 'syslog', 2001);
INSERT INTO public.export_events_fields VALUES ('CEF.DeviceVersion', 8, 2, 'Версия', 'Версия программного обеспечения, явившегося источником события', 2, 'syslog', 2002);
INSERT INTO public.export_events_fields VALUES ('CEF.Version', 8, 2, 'Версия CEF', 'Версия CEF', 2, 'syslog', 2003);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomNumber7', 1, 1, 'Число cn7', 'CEF пользовательское поле для числа №7.', 2, 'syslog', 2038);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomNumber9', 1, 1, 'Число cn9', 'CEF пользовательское поле для числа №9.', 2, 'syslog', 2040);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.Attachments', 8, 2, 'ID ошибки', 'Список объектов, описывающих файлы вложения, отправляемые вместе с сообщением электронной почты', 4, 'ecs', 10075);
INSERT INTO public.export_events_fields VALUES ('Event.Outcome', 8, 2, 'Сканер-ВС 6. Исход события', 'Сканер-ВС 6. Исход события', 3, 'user', 0);
INSERT INTO public.export_events_fields VALUES ('Message', 8, 2, 'Сканер-ВС 6. Сообщение', 'Сканер-ВС 6. Сообщение', 3, 'user', 0);
INSERT INTO public.export_events_fields VALUES ('Event.Module', 8, 2, 'Сканер-ВС 6. Модуль', 'Сканер-ВС 6. Модуль, сообщивший о событии', 3, 'user', 0);
INSERT INTO public.export_events_fields VALUES ('Event.Action', 8, 2, 'Сканер-ВС 6. Действие', 'Сканер-ВС 6. Действие пользователя', 3, 'user', 0);
INSERT INTO public.export_events_fields VALUES ('Scanner.Packages.Count', 2, 1, 'Сканер-ВС 6. Число пакетов', 'Сканер-ВС 6. Число пакетов на хосте', 3, 'user', 0);
INSERT INTO public.export_events_fields VALUES ('Vulnerability.Severity', 8, 2, 'Сканер-ВС 6. Уровень критичности уязвимости', 'Сканер-ВС 6. Уровень критичности уязвимости', 3, 'user', 0);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.CcAddress', 8, 2, 'Почтовый адрес получателя копии.', 'Адрес электронной почты получателя копии. пример: "cc.user1@example.com"', 4, 'ecs', 10081);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.ContentType', 8, 2, 'MIME-тип сообщения электронной почты.', 'Информация о том, как должно отображаться сообщение. Обычно тип MIME.пример: "текст/обычный"', 4, 'ecs', 10082);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.DeliveryTimestamp', 11, 5, 'Дата и время доставки сообщения.', 'Дата и время, когда сообщение электронной почты было получено сервисом или клиентом. пример: "2020-11-10T22:12:34.8196921Z"', 4, 'ecs', 10083);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.Direction', 8, 2, 'Размер вложенного файла.', 'Направление сообщения в зависимости от отправляющего и принимающего доменов. пример: "входящий"', 4, 'ecs', 10084);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.FromAddress', 8, 2, 'Электронный адрес отправителя.', 'Адрес электронной почты отправителя, обычно из поля заголовка RFC 5322 From:.пример: "sender@example.com"', 4, 'ecs', 10085);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.LocalId', 8, 2, 'Уникальный идентификатор, данный источником.', 'Уникальный идентификатор, присвоенный электронному письму источником, создавшим событие. Идентификатор не сохраняется между переходами. пример: "c26dbea0-80d5-463b-b93c-4e8b708219ce"', 4, 'ecs', 10086);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.MessageId', 8, 2, 'Уникальный идентификатор, данный источником.', 'Идентификатор из заголовка электронной почты RFC 5322 `Message-ID:`, который относится к конкретному электронному письму. пример: "<81ce15$8r2j59@mail01.example.com>" ', 4, 'ecs', 10087);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.OriginationTimestamp', 11, 5, 'Дата и время составления письма.', 'Дата и время составления сообщения электронной почты. Многие почтовые клиенты заполняют это значение автоматически, когда сообщение отправляется пользователем. пример: "2020-11-10T22:12:34.8196921Z" ', 4, 'ecs', 10088);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Outcome', 26, 15, 'Исход', 'Один из четырёх полей категоризации событий Elastic Common Schema. Описывает, какой результат содержится в событии - успех или неудача.', 4, 'ecs', 10178);
INSERT INTO public.export_events_fields VALUES ('CEF.DeviceEventClassID', 8, 2, 'Сигнатура', 'Уникальный идентификатор класса события. В системах обнаружения вторжений каждая сигнатура или паттерн обнаружения подозрительной активности имеют индивидуальный идентификатор', 2, 'syslog', 2004);
INSERT INTO public.export_events_fields VALUES ('CEF.Extension', 8, 2, 'Расширения CEF', 'Извлекаемые из CEF дополнительные значения в формате ключ=значение разделённые пробелом', 2, 'syslog', 2007);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceNtDomain', 8, 2, 'DeviceNtDomain', 'Доменное имя Windows адреса устройства.', 2, 'syslog', 2008);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceInboundInterface', 8, 2, 'Входящий интерфейс', 'Интерфейс, через который пакет или данные поступили в устройство.', 2, 'syslog', 2009);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.ReplyToAddress', 8, 2, 'Адрес, на который должны быть доставлены ответы.', 'Адрес, на который должны быть доставлены ответы, основан на значении заголовка RFC 5322 `Reply-To:`. пример: "reply.here@example.com"', 4, 'ecs', 10089);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.SenderAddress', 8, 2, 'Адрес отправителя сообщения.', 'Согласно RFC 5322 указывает адрес, ответственный за фактическую передачу сообщение ', 4, 'ecs', 10090);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.Subject', 8, 2, 'Тема сообщения электронной почты.', 'Краткое содержание темы сообщения. пример: "Пожалуйста, посмотрите это важное сообщение".', 4, 'ecs', 10091);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.ToAddress', 8, 2, 'Адрес электронной почты получателя.', 'Адрес электронной почты получателя. пример: "user1@example.com".', 4, 'ecs', 10092);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.XMailer', 8, 2, 'Приложение, в котором было создано электронное письмо.', ' Имя приложения, которое использовалось для создания и отправки исходного сообщения электронной почты. пример: "Спамбот v2.5"', 4, 'ecs', 10093);
INSERT INTO public.export_events_fields VALUES ('ECS.Faas.Coldstart', 13, 6, 'Логическое значение холодного запуска функции.', 'Логическое значение, указывающее на холодный запуск функции.', 4, 'ecs', 10094);
INSERT INTO public.export_events_fields VALUES ('ECS.Faas.Execution', 8, 2, 'Идентификатор выполнения текущей функции', 'Идентификатор выполнения текущей функции. пример: "af9d5aa4-a685-4c5f-a22b-444f80b3cc28"', 4, 'ecs', 10095);
INSERT INTO public.export_events_fields VALUES ('ECS.Email.AttachmentsFileExtension', 8, 2, 'Расширение вложенного файла', 'Расширение вложенного файла, за исключением ведущей точки. пример: "txt".', 4, 'ecs', 10076);
INSERT INTO public.export_events_fields VALUES ('ECS.Faas.TriggerType', 8, 2, 'Триггер для выполнения функции.', 'Триггер для выполнения функции. Ожидаемые значения:https,pubsub,datasource,timer,other. ', 4, 'ecs', 10096);
INSERT INTO public.export_events_fields VALUES ('CEF.EventName', 8, 2, 'Имя события', 'Описание события в читаемом формате.', 2, 'syslog', 2005);
INSERT INTO public.export_events_fields VALUES ('CEFX.DestinationZoneURI', 8, 2, 'DestinationZoneURI', 'URI сегмента (Zone) актива назначения.', 2, 'syslog', 2010);
INSERT INTO public.export_events_fields VALUES ('ECS.Faas.TtriggerRequestId', 8, 2, 'Идентификатор триггерного запроса,', 'ID триггерного запроса, сообщения, события и т.д. пример: 123456789.', 4, 'ecs', 10097);
INSERT INTO public.export_events_fields VALUES ('ECS.DataStream.Dataset', 8, 2, 'Набор данных.', 'Произвольный набор данных.', 4, 'ecs', 10099);
INSERT INTO public.export_events_fields VALUES ('ECS.DataStream.Namespace', 8, 2, 'Пространство имен набора данных', 'Многие пользователи заполняют это поле значением по умолчанию. Если значение не используется, оно возвращается к «по умолчанию». Не должно содержать символ `-` и быть длиннее 100 символов.', 4, 'ecs', 10100);
INSERT INTO public.export_events_fields VALUES ('ECS.Orchestrator.ClusterUrl', 8, 2, 'URL API управления кластером', 'URL API, используемого для управления кластером.', 4, 'ecs', 10102);
INSERT INTO public.export_events_fields VALUES ('ECS.Orchestrator.ClusterVersion', 8, 2, 'Версия кластера.', 'Версия кластера.', 4, 'ecs', 10103);
INSERT INTO public.export_events_fields VALUES ('ECS.ELF.Imports', 8, 2, 'Импорты ELF', 'Список имен и типов импортируемых элементов.', 4, 'ecs', 10070);
INSERT INTO public.export_events_fields VALUES ('ECS.DataStream.Type', 8, 2, 'Тип потока данных.', 'Допустимыми значениями являются «журналы» (log) и «показатели» (metrics). Значения не должны начинаться с ''+'' или ''_'' и содержать `-`.', 4, 'ecs', 10098);
INSERT INTO public.export_events_fields VALUES ('ECS.Orchestrator.Type', 8, 2, 'Тип кластера', 'Тип кластера оркестрации(например, kubernetes, nomad или cloudfoundry).', 4, 'ecs', 10104);
INSERT INTO public.export_events_fields VALUES ('ECS.Orchestrator.Organization', 8, 2, 'Организация затронутая событием', 'Организация, затронутая событием (для многопользовательских настроек оркестратора).', 4, 'ecs', 10105);
INSERT INTO public.export_events_fields VALUES ('ECS.Orchestrator.Namespace', 8, 2, 'Пространство имен, в котором происходит действие.', 'Пространство имен, в котором происходит действие. пример: ''"kube-system"', 4, 'ecs', 10106);
INSERT INTO public.export_events_fields VALUES ('ECS.Orchestrator.ResourceName', 8, 2, 'Имя ресурса, на который воздействуют.', 'Имя ресурса, на который воздействуют. пример: ''"test-pod-cdcws"', 4, 'ecs', 10107);
INSERT INTO public.export_events_fields VALUES ('ECS.Orchestrator.ResourceType', 8, 2, 'Тип ресурса, на который воздействуют.', 'Тип ресурса, на который воздействуют. пример: ''"service"', 4, 'ecs', 10108);
INSERT INTO public.export_events_fields VALUES ('ECS.Orchestrator.ApiVersion', 8, 2, 'Версия API, используемая для выполнения действия.', 'Версия API, используемая для выполнения действия. пример: ''"v1beta1"', 4, 'ecs', 10109);
INSERT INTO public.export_events_fields VALUES ('ECS.CodeSignature.Exists', 13, 6, 'Присутствие сигнатуры', 'True если сигнатура присутствует.', 4, 'ecs', 10110);
INSERT INTO public.export_events_fields VALUES ('ECS.CodeSignature.SubjectName', 8, 2, 'Подпись сигнатуры', 'Имя субъекта подписавшего объект.', 4, 'ecs', 10111);
INSERT INTO public.export_events_fields VALUES ('ECS.CodeSignature.Valid', 13, 6, 'Валидность сигнатуры', 'Логическое утверждение, true если сигнатура бинарного содержимого проверена, пустое поле если сигнатура не проверялась.', 4, 'ecs', 10112);
INSERT INTO public.export_events_fields VALUES ('ECS.CodeSignature.Trusted', 13, 6, 'Доверенная сигнатура', 'Сохраняет статус доверия цепочки сертификатов только в случае активной проверки сертификата.', 4, 'ecs', 10113);
INSERT INTO public.export_events_fields VALUES ('ECS.CodeSignature.Status', 8, 2, 'Информация о сертификате', 'Дополнительная информация о статусе сертификата. Может быть использована для регистрации криптографических ошибок.', 4, 'ecs', 10114);
INSERT INTO public.export_events_fields VALUES ('ECS.CodeSignature.TeamID', 8, 2, 'Групповой идентификатор', 'Поле используется для идентификации команды или поставщика программного продукта. Поле относится только к Apple * OS.', 4, 'ecs', 10115);
INSERT INTO public.export_events_fields VALUES ('ECS.CodeSignature.SigningID', 8, 2, 'Подпись', 'Это поле используется для идентификации приложения, созданного программного обеспечения. Это поле относится только к ОС Apple.', 4, 'ecs', 10116);
INSERT INTO public.export_events_fields VALUES ('ECS.CodeSignature.DigestAlgorithm', 8, 2, 'Алгоритм хеширования, используемый для подписи процесса', 'Алгоритм хеширования, используемый для подписи процесса Это значение может различать подписи, когда файл подписан несколько раз, тем же подписывающим лицом, но с другим алгоритмом дайджеста. пример: sha256', 4, 'ecs', 10117);
INSERT INTO public.export_events_fields VALUES ('ECS.CodeSignature.Timestamp', 11, 5, 'Когда подпись была сформирована и подписана', 'Дата и время, когда подпись кода была сгенерирована и подписана. пример: 2021-01-01T12: 10: 30Z.', 4, 'ecs', 10118);
INSERT INTO public.export_events_fields VALUES ('ECS.Container.Runtime', 8, 2, 'Среда выполнения', 'Среда выполнения, управляющая данным контейнером.', 4, 'ecs', 10119);
INSERT INTO public.export_events_fields VALUES ('ECS.Container.ID', 8, 2, 'ID контейнера', 'Уникальный ID контейнера.', 4, 'ecs', 10120);
INSERT INTO public.export_events_fields VALUES ('ECS.Container.ImageName', 8, 2, 'Имя образа', 'Имя образа на котором был построен контейнер.', 4, 'ecs', 10121);
INSERT INTO public.export_events_fields VALUES ('ECS.Container.ImageTag', 8, 2, 'Тэг образа', 'Тэг образа контейнера.', 4, 'ecs', 10122);
INSERT INTO public.export_events_fields VALUES ('ECS.Container.Name', 8, 2, 'Имя контейнера', 'Имя контейнера.', 4, 'ecs', 10123);
INSERT INTO public.export_events_fields VALUES ('ECS.Container.Labels', 23, 8, 'Метки контейнера', 'Метки контейнера.', 4, 'ecs', 10124);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.IP', 15, 7, 'IP назначения', 'IP адрес назначения (IPv4 или IPv6).', 4, 'ecs', 10126);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.IP.CountryISOCode', 8, 2, 'Страна назначения', 'Двухбуквенный код страны назначения в стандарте ISO. Вычисляется с помощью баз GeoIP по полю ECS.Destination.IP. Пример: ''RU'', ''AM'', ''US'', ''CN''.', 4, 'ecs', 10127);
INSERT INTO public.export_events_fields VALUES ('ECS.Package.Name', 8, 2, 'Имя пакета ПО', 'Имя пакета ПО, пример: "go".', 4, 'ecs', 10314);
INSERT INTO public.export_events_fields VALUES ('CEFX.OldFileHash', 8, 2, 'Хэш старого файла', 'Хеш старого файла.', 2, 'syslog', 2059);
INSERT INTO public.export_events_fields VALUES ('Key', 8, 2, 'Ключ события', 'Уникальный ключ события, генерируется во время создания события.', 1, 'core', 1000);
INSERT INTO public.export_events_fields VALUES ('CTime', 11, 5, 'Время создания', 'Время создания события, извлечённое из сырого текста события', 1, 'core', 1001);
INSERT INTO public.export_events_fields VALUES ('GenerationTime', 11, 5, 'Время получения', 'Время получения события агентом/коллектором', 1, 'core', 1002);
INSERT INTO public.export_events_fields VALUES ('WTime', 11, 5, 'Время записи', 'Время записи события в хранилище', 1, 'core', 1003);
INSERT INTO public.export_events_fields VALUES ('CollectorType', 8, 2, 'Тип источника', 'Тип агента или коллектора событий ИБ', 1, 'core', 1004);
INSERT INTO public.export_events_fields VALUES ('Raw', 8, 2, 'Исходный текст', 'Исходный текст события', 1, 'core', 1005);
INSERT INTO public.export_events_fields VALUES ('CollectorID', 8, 2, 'ID источника', 'Уникальный идентификатор агента или коллектора событий ИБ', 1, 'core', 1006);
INSERT INTO public.export_events_fields VALUES ('SetupID', 8, 2, 'ID инсталляции', 'ID инсталляции системы', 1, 'core', 1007);
INSERT INTO public.export_events_fields VALUES ('TenantID', 20, 1, 'ID кластера', 'ID кластера в мульти-кластерной инсталляции системы', 1, 'core', 1008);
INSERT INTO public.export_events_fields VALUES ('SL', 20, 1, 'Метка безопасности', 'Метка безопасности для контроля привилегий доступа к событиям ИБ с источника', 1, 'core', 1009);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.Address', 8, 2, 'Адрес назначения', 'Адрес назначения, может быть IP, доменное имя, Unix сокет. Сырой адрес необходимо заполнять всегда, извлечённые IP и Domain можно дублировать в соответствующих полях.', 4, 'ecs', 10125);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.IP.City', 8, 2, 'Город назначения', 'Город назначения. Вычисляется с помощью баз GeoIP по полю ECS.Destination.IP. Пример: ''Moscow'', ''Красноярск'', ''Montreal'', ''Hague''.', 4, 'ecs', 10128);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.IP.Location', 8, 2, 'Координаты назначения', 'Широта и долгота назначения. Вычисляется с помощью баз GeoIP по полю ECS.Destination.IP. Пример: ''-73.614830,45.505918''.', 4, 'ecs', 10129);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.Port', 5, 1, 'Порт назначения', 'Порт назначения.', 4, 'ecs', 10130);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.MAC', 8, 2, 'MAC адрес назначения', 'MAC адрес назначения.', 4, 'ecs', 10131);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.Domain', 8, 2, 'Домен назначения', 'Домен назначения.', 4, 'ecs', 10132);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Module', 8, 2, 'Модуль', 'Название модуля ставшего источником события, например,  Apache logs', 4, 'ecs', 10180);
INSERT INTO public.export_events_fields VALUES ('ECS.Package.Installed', 11, 5, 'Дата/время установки ПО', 'Дата/время установки ПО.', 4, 'ecs', 10319);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.RegisteredDomain', 8, 2, 'Зарегистрированный домен назначения', 'Наивысший домен назначения очищенный от поддомена. Например, для домена назначения "foo.example.com" значение зарегистрированного домена будет "example.com ". Алгоритм определения зарегистрированного домена использует список суффиксов из https://publicsuffix.org)', 4, 'ecs', 10133);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.TopLevelDomain', 8, 2, 'eTLD назначения', 'Домен верхнего уровня (eTLD) назначения.Например, для домена назначения  "foo.example.ru" значение домена верхнего уровня будет "ru". Алгоритм определения зарегистрированного домена использует список суффиксов из https://publicsuffix.org.', 4, 'ecs', 10134);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.SignatureAlgorithm', 8, 2, 'Алгоритм подписи x509', 'Алгоритма подписи сертификата x509. Рекомендуется использовать https://github.com/golang/go/blob/go1.14/src/crypto/x509/x509.go#L337-L353 ', 4, 'ecs', 10598);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.NotBefore', 11, 5, 'Дата начала x509', 'Дата начала действия сертификата x509.', 4, 'ecs', 10599);
INSERT INTO public.export_events_fields VALUES ('ECS.Agent.Host', 8, 2, 'Имя хоста агента', 'Имя хоста агента.', 4, 'ecs', 10010);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.Subdomain', 8, 2, 'Поддомен назначения', 'Поддомен назначения -- часть FQDN источника включает все части за исключением имени. Например, для адреса "www.east.mydomain.ru" значение поддомена будет "east". В случаях, когда у домена есть несколько уровней поддоменов, например "sub2.sub1.example.ru", поддомен должен быть равен  "sub2.sub1" без точки в конце строки.)', 4, 'ecs', 10135);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.Bytes', 3, 1, 'Байт передано от узла назначения', 'Байт передано от узла назначения к источнику.', 4, 'ecs', 10136);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.Packets', 3, 1, 'Пакетов передано от узла назначения', 'Пакетов передано от узла назначения к источнику.', 4, 'ecs', 10137);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.NatIP', 15, 7, 'IP NAT узла назначения', 'IP сессий NAT узла назначения (например, интернет в частную dmz). Обычно включает в себя пути балансировщиков нагрузки, межсетевых экранов, роутеров.', 4, 'ecs', 10138);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.NatPort', 3, 1, 'Порт NAT узла назначения', 'Порт сессий NAT узла назначения. Обычно включает в себя пути балансировщиков нагрузки, межсетевых экранов, роутеров.', 4, 'ecs', 10139);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.User.ID', 8, 2, 'ID пользователя назначения', 'Идентификатор пользователя узла назначения, например, ''S-1-5-21-202424912787-2692429404-2351956786-1000''.', 4, 'ecs', 10140);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.User.Name', 8, 2, 'Пользователь назначения', 'Сокращённое имя пользователя или логин на узле назначения, например, p.picasso .', 4, 'ecs', 10141);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.User.FullName', 8, 2, 'Имя пользователя назначения', 'Полное имя пользователя на узле назначения, например Pablo Picasso.', 4, 'ecs', 10142);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.User.Email', 8, 2, 'Почта пользователя назначения', 'Почта пользователя на узле назначения.', 4, 'ecs', 10143);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.User.Hash', 8, 2, 'Хеш пользователя назначения', 'Уникальный хеш пользователя на узле назначения для сопоставления информации о пользователе в анонимной форме. Полезно, если *.User.ID или *.User.Name содержат  конфиденциальную информацию и не могут быть использованы.', 4, 'ecs', 10144);
INSERT INTO public.export_events_fields VALUES ('ECS.Destination.User.Domain', 8, 2, 'Каталог пользователя назначения', 'Домен каталога пользователей к которому принадлежит пользователь узла назначения, например, доменное имя LDAP или Active Directory.', 4, 'ecs', 10145);
INSERT INTO public.export_events_fields VALUES ('ECS.DLL.Type', 8, 2, 'Имя DLL', 'Информация о динамических библиотеках, загруженных в процесс -- `.dll`, `.so`, `.dylib`.', 4, 'ecs', 10147);
INSERT INTO public.export_events_fields VALUES ('ECS.DLL.Path', 8, 2, 'Путь к DLL', 'Полный путь к динамической библиотеке, например  C:\\Windows\\System32\\kernel32.dll', 4, 'ecs', 10148);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.Type', 8, 2, 'Тип события DNS', 'Тип захваченного события DNS, запрос или ответ. Если источник событий DNS отправляет только запросы DNS, следует создавать dns-события типа "ECS.DNS.Type:query" Если источник событий DNS также дает ответы, следует создавать одно событие для каждого запроса, даже если запрос не виден, а второе событие, содержащее все детали запроса, а также массив ответы.', 4, 'ecs', 10149);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.ID', 8, 2, 'DNS ID', 'Идентификатор пакета DNS, присвоенный программой, создавшей запрос. Идентификатор копируется в ответ.', 4, 'ecs', 10150);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.OpCode', 8, 2, 'Код события DNS', 'Код операции DNS, определяющий тип запроса в сообщении. Это значение устанавливается создателем запроса и копируется в ответ.', 4, 'ecs', 10151);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.HeaderFlags', 8, 2, 'Флаги DNS', 'Массив 2-х буквенных флагов заголовка DNS. Ожидаемые значения: AA, TC, RD, RA, AD, CD, DO.', 4, 'ecs', 10152);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Type', 27, 15, 'Тип события', 'Один из четырёх полей категоризации событий Elastic Common Schema. Содержит множество уникальных описаний типа события: начало, удаление, unknown,user,access,admin,allowed,change,connection,creation,deletion,denied,end,error,group,info,installation,protocol,start,indicator.', 4, 'ecs', 10179);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.QuestionName', 8, 2, 'Запрашиваемое имя DNS', 'Запрашиваемое имя. Если поле имени содержит непечатаемые символы (меньше 32 или больше  126), эти символы должны быть представлены как экранированные целые числа с основанием 10  (\\DDD). Обратные косые черты и кавычки следует избегать, а перевод строки должен  быть преобразованы в \\t, \\r и \\n соответственно.', 4, 'ecs', 10154);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.QuestionClass', 8, 2, 'Класс запрашиваемой записи DNS', 'Класс запрашиваемой записи DNS.', 4, 'ecs', 10156);
INSERT INTO public.export_events_fields VALUES ('ECS.Cloud.InstanceID', 8, 2, 'ID Интерфейс узла', 'ID Интерфейс узла.', 4, 'ecs', 10043);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.QuestionType', 8, 2, 'Тип запроса DNS', 'Тип запрашиваемой записи DNS.', 4, 'ecs', 10155);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.QuestionRegisteredDomain', 8, 2, 'Наивысший домен', 'Самый высокий зарегистрированный домен DNS очищенный от поддомена. Например, для домена источника "foo.example.com" значение зарегистрированного домена будет "example.com". Алгоритм определения зарегистрированного домена использует список суффиксов из http: //publicsuffix.org .', 4, 'ecs', 10157);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.QuestionTopLevelDomain', 8, 2, 'eTLD', 'Домен первого уровня, например для "example.com" таким доменом будет считаться "com".', 4, 'ecs', 10158);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.QuestionSubdomain', 8, 2, 'Поддомен', 'Поддомен ,например для "sub2.sub1.example.com" таким доменом будет считаться "sub2.sub1".', 4, 'ecs', 10159);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.Answer', 23, 8, 'Ответы DNS', 'Массив, содержащий объекты для каждого раздела ответов, возвращаемый сервером. Основные ключи, которые должны присутствовать в этих объектах, определяются ECS. Записи содержащие больше информации, могут содержать больше ключей, чем определяет ECS. Не все источники данных DNS предоставляют полную информацию об ответах DNS. Как минимум, объекты ответа должны содержать ключ "data". Если доступно информации больше, сопоставьте её с ECS. в объекты ответа как настраиваемые поля.', 4, 'ecs', 10160);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.AnswersName', 8, 2, 'Имя ответа DNS', 'Доменное имя, к которому относится эта запись ресурса. Если цепочка CNAME разрешается, имя каждого ответа должно соответствовать ответу "data".', 4, 'ecs', 10161);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.AnswersType', 8, 2, 'Тип ответа DNS', 'Тип данных содержащихся в записи ресурса.', 4, 'ecs', 10162);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.AnswersClass', 8, 2, 'Класс ответа DNS', 'Класс данных содержащихся в записи ресурса.', 4, 'ecs', 10163);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.AnswersTTL', 5, 1, 'Время устаревания ответа DNS', 'Временной интервал кэширования записи DNS прежде, чем её следует стереть. Нулевые значения означают, что данные не должны кэшироваться. Измеряется в секундах.', 4, 'ecs', 10164);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.AnswersData', 8, 2, 'Прочие данные ответа DNS', 'Данные, описывающие ресурс. Значение этих данных зависит от типа и класса ресурса.', 4, 'ecs', 10165);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.ResolvedIP', 16, 18, 'IP адресов DNS', 'Массив, содержащий все IP-адреса из файла "answers.data". Использование массива ответов может быть затруднительным из-за разнообразия форматов данных, которые он может содержать. Извлечение всех видимых IP-адресов to "dns.resolved_ip" позволяет индексировать их как IP-адреса, и упрощает их визуализацию и поиск.', 4, 'ecs', 10166);
INSERT INTO public.export_events_fields VALUES ('ECS.Error.ID', 8, 2, 'ID ошибки', 'Ошибки любого рода. Использование данных полей для ошибок, возникающих при получении событий или в случаях, когда само событие содержит ошибку.', 4, 'ecs', 10167);
INSERT INTO public.export_events_fields VALUES ('ECS.Error.Code', 8, 2, 'Код ошибки', 'Код ошибки описывающий ошибку.', 4, 'ecs', 10169);
INSERT INTO public.export_events_fields VALUES ('ECS.Error.Type', 8, 2, 'Тип ошибки', 'Тип ошибки, например, имя класса исключения.', 4, 'ecs', 10170);
INSERT INTO public.export_events_fields VALUES ('ECS.Error.StackTrace', 8, 2, 'Трассировка ошибки', 'Трассировка стека этой ошибки в виде обычного текста.', 4, 'ecs', 10171);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.ID', 8, 2, 'ID исходного события', 'Идентификатор, извлечённый из исходного события.', 4, 'ecs', 10172);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Code', 5, 1, 'Код события', 'Идентификационный код события. Например, Windows Event ID https://docs.microsoft.com/ru-ru/windows-server/identity/ad-ds/plan/appendix-l--events-to-monitor', 4, 'ecs', 10173);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Kind', 24, 15, 'Класс события', 'Один из четырёх полей категоризации событий Elastic Common Schema. Описывает верхне-уровневый класс события, например, события класса метрики, класса оповещения.', 4, 'ecs', 10174);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Category', 25, 15, 'Класс события', 'Один из четырёх полей категоризации событий Elastic Common Schema. Описывает верхний уровень класса события, например, события класса метрики, класса оповещения.', 4, 'ecs', 10175);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Provider', 8, 2, 'Источник события', 'Источник события- программное обеспечение, сгенерировавшее событие (например, Sysmon, httpd), или подсистемы ОС (kernel, Microsoft-Windows-Security-Auditing).', 4, 'ecs', 10176);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Action', 8, 2, 'Действие', 'Действие, описанное событием, например, "group-add", "process-started".', 4, 'ecs', 10177);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Dataset', 8, 2, 'Набор данных', 'Если источник отправляет события сразу в несколько журналов, в поле набора данных указывается имя журнала', 4, 'ecs', 10181);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Severity', 19, 1, 'Критичность', 'Числовое значение критичности события ,источником которого не является межсетевой экран, система обнаружения вторжений и др. Для Syslog необходимо заполнять поле ECS.Log.SyslogSeverityCode.', 4, 'ecs', 10182);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Original', 8, 3, 'Исходное событие', 'Это исходное сообщение журнала, содержащее полное сообщение журнал прежде чем разделить его на несколько частей. В отличие от поля (message), которое может содержать извлеченную часть сообщения журнала, это поле содержит исходное полное сообщение журнала. В нем могут быть уже применены некоторые модификации, такие как кодирование или удалённые строки, для очистки журнала сообщений. ', 4, 'ecs', 10183);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Hash', 8, 3, 'Хеш', 'Контрольная сумма исходного текста события', 4, 'ecs', 10184);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Duration', 28, 1, 'Продолжительность', 'Продолжительность события в наносекундах, разница между ECS.Event.Start и ECS.Event.End', 4, 'ecs', 10185);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Sequence', 2, 1, 'Порядковый  номер', 'Порядковый номер объекта - это значение опубликованное источниками событий, чтобы сделать точный и однозначным порядок событий.', 4, 'ecs', 10186);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Timezone', 8, 2, 'Временная зона', 'Используется в случаях, когда timestamp в событии не содержит информацию о временной зоне, например в событии syslog', 4, 'ecs', 10187);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Created', 11, 5, 'Время создания', 'Время извлечённое из сырого события, аналог CTime  в пространстве имён Elastic Common Schema.', 4, 'ecs', 10188);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Start', 11, 5, 'Время начала', 'Время начала, время когда активность была впервые обнаружена.', 4, 'ecs', 10189);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.End', 11, 5, 'Время окончания', 'Время окончания, время когда активность попадала в поле зрения системы в последний раз.', 4, 'ecs', 10190);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.RiskScore', 6, 1, 'Риск', 'Баллы риска извлечённые из события.', 4, 'ecs', 10191);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.RiskScoreNorm', 6, 1, 'Риск шкала 0-100', 'Баллы риска извлечённые из события и приведённые к шкале 0..100.', 4, 'ecs', 10192);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Ingested', 11, 5, 'Время сохранения в БД', 'Время сохранения в БД, аналог CTime в пространстве имён Elastic Common Schema.', 4, 'ecs', 10193);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Reference', 8, 9, 'Ссылка', 'Ссылка на дополнительную информацию о событии.', 4, 'ecs', 10194);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.URL', 8, 9, 'Ссылка во внешнюю систему', 'Ссылка во внешнюю систему по данному событию, например СОВ либо систему расследования инцидентов.', 4, 'ecs', 10195);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.Reason', 8, 2, 'Причина', 'Причина, по которой случилось событие.', 4, 'ecs', 10196);
INSERT INTO public.export_events_fields VALUES ('ECS.Event.AgentIdStatus', 8, 2, 'Статус проверки поля идентификатора агента события', 'Если система, принимающая события, способна проверить значение на основе информация об аутентификации для клиента, тогда можно использовать это поле чтобы отразить результат этой проверки.', 4, 'ecs', 10197);
INSERT INTO public.export_events_fields VALUES ('ECS.Geo.ContinentCode', 8, 2, 'Код континента', 'Двухбуквенный код ,обозначающий название континента.', 4, 'ecs', 10199);
INSERT INTO public.export_events_fields VALUES ('ECS.Geo.ContinentName', 8, 2, 'Континент', 'Название континента.', 4, 'ecs', 10200);
INSERT INTO public.export_events_fields VALUES ('ECS.Geo.CountryName', 8, 2, 'Страна', 'Название страны.', 4, 'ecs', 10201);
INSERT INTO public.export_events_fields VALUES ('ECS.Geo.RegionName', 8, 2, 'Регион', 'Название региона.', 4, 'ecs', 10202);
INSERT INTO public.export_events_fields VALUES ('ECS.Geo.CityName', 8, 2, 'Город', 'Название города.', 4, 'ecs', 10203);
INSERT INTO public.export_events_fields VALUES ('ECS.Geo.CountryIsoCode', 8, 2, 'Код страны', 'Код страны по стандарту ISO.', 4, 'ecs', 10204);
INSERT INTO public.export_events_fields VALUES ('ECS.Geo.PostalCode', 8, 2, 'Индекс', 'Почтовый индекс, местоположения. Код и будет широко варьироваться от страны к стране.', 4, 'ecs', 10205);
INSERT INTO public.export_events_fields VALUES ('ECS.Geo.RegionIsoCode', 8, 2, 'ISO региона', 'Геокод региона по стандарту ISO.', 4, 'ecs', 10206);
INSERT INTO public.export_events_fields VALUES ('ECS.Geo.Timezone', 8, 2, 'Часовой пояс', 'Название часового пояса, например временная зона по IANA.', 4, 'ecs', 10207);
INSERT INTO public.export_events_fields VALUES ('ECS.Geo.Name', 8, 2, 'Имя географического места', 'Определяемое пользователем местоположение на уровне детализации, например, название дата-центра, этаж, номер кабинета. Обычно не используется при автоматической геолокации.', 4, 'ecs', 10208);
INSERT INTO public.export_events_fields VALUES ('ECS.Group.ID', 8, 2, 'ID группы', 'Уникальный ID для группы в системе.', 4, 'ecs', 10209);
INSERT INTO public.export_events_fields VALUES ('ECS.Group.Name', 8, 2, 'Имя группы', 'Имя группы.', 4, 'ecs', 10210);
INSERT INTO public.export_events_fields VALUES ('ECS.Group.Domain', 8, 2, 'Каталог группы', 'Имя каталога группы ,например,имя домена LDAP или AD', 4, 'ecs', 10211);
INSERT INTO public.export_events_fields VALUES ('ECS.Hash.MD5', 8, 3, 'MD5 хеш', 'MD5 хеш.', 4, 'ecs', 10212);
INSERT INTO public.export_events_fields VALUES ('ECS.Hash.SHA1', 8, 3, 'SHA1 хеш', 'SHA1 хеш.', 4, 'ecs', 10213);
INSERT INTO public.export_events_fields VALUES ('ECS.Hash.SHA512', 8, 3, 'SHA512 хеш', 'SHA512 хеш.', 4, 'ecs', 10216);
INSERT INTO public.export_events_fields VALUES ('ECS.Hash.SSDEEP', 8, 3, 'SSDEEP хеш', 'SSDEEP хеш.', 4, 'ecs', 10217);
INSERT INTO public.export_events_fields VALUES ('ECS.Hash.TLSH', 8, 3, 'TLSH хеш', 'TLSH хеш.', 4, 'ecs', 10218);
INSERT INTO public.export_events_fields VALUES ('ECS.HTTP.RequestID', 8, 2, 'ID запроса', 'Уникальный ID для каждого запроса HTTP для сопоставления журналов между клиентом и сервером в транзакциях. Может содержаться в нестандартном заголовке HTTP, например, X-Request-ID или Correlation-ID.', 4, 'ecs', 10219);
INSERT INTO public.export_events_fields VALUES ('ECS.HTTP.RequestMethod', 8, 2, 'Метод HTTP', 'Метод HTTP-запроса.', 4, 'ecs', 10220);
INSERT INTO public.export_events_fields VALUES ('ECS.HTTP.RequestMimeType', 8, 2, 'MIME запроса', 'Mime-тип тела запроса, заполняется в зависимости от тела запроса, а не от заголовка "Content-Type".', 4, 'ecs', 10221);
INSERT INTO public.export_events_fields VALUES ('ECS.HTTP.RequestBodyContent', 8, 2, 'Тело запроса', 'Тело HTTP-запроса.', 4, 'ecs', 10222);
INSERT INTO public.export_events_fields VALUES ('ECS.HTTP.RequestReferrer', 8, 2, 'Заголовок Referrer', 'Заголовок Referrer для данного запроса.', 4, 'ecs', 10223);
INSERT INTO public.export_events_fields VALUES ('ECS.HTTP.ResponseStatusCode', 3, 1, 'Код ответа', 'Код состояния ответа HTTP.', 4, 'ecs', 10224);
INSERT INTO public.export_events_fields VALUES ('ECS.HTTP.ResponseMimeType', 8, 2, 'MIME ответа', 'MIME тип тела ответа. Это значение должно быть заполнено только на основе содержимого ответа. Сравнение Mine типа с заголовком может помочь обнаружить неправильно настроенный сервер.', 4, 'ecs', 10225);
INSERT INTO public.export_events_fields VALUES ('ECS.HTTP.ResponseBodyContent', 8, 2, 'Тело ответа', 'Тело HTTP ответа.', 4, 'ecs', 10226);
INSERT INTO public.export_events_fields VALUES ('ECS.HTTP.Version', 8, 2, 'HTTP версия', 'HTTP версия.', 4, 'ecs', 10227);
INSERT INTO public.export_events_fields VALUES ('ECS.HTTP.RequestBytes', 3, 1, 'Количество байт запроса', 'Количество байт запроса HTTP (тело и заголовок) .', 4, 'ecs', 10228);
INSERT INTO public.export_events_fields VALUES ('ECS.HTTP.RequestBodyBytes', 3, 1, 'Количество байт в теле запрос', 'Количество байт в теле запроса HTTP.', 4, 'ecs', 10229);
INSERT INTO public.export_events_fields VALUES ('ECS.HTTP.ResponseBytes', 3, 1, 'Количество байт ответа', 'Количество байт ответа HTTP (тело и заголовок)', 4, 'ecs', 10230);
INSERT INTO public.export_events_fields VALUES ('ECS.HTTP.ResponseBodyBytes', 3, 1, 'Количество байт в теле ответа', 'Количество байт в теле ответа HTTP.', 4, 'ecs', 10231);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Name', 8, 2, 'Имя файла', 'Имя файла с расширением, но без каталога.', 4, 'ecs', 10232);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Attributes', 8, 2, 'Аттрибуты файла', 'Имена атрибутов зависят от платформы. Неполный список ожидаемых значений: архив, сжатый, каталог, зашифрованный, выполнить, скрытый, чтение, только чтение, система, запись. ', 4, 'ecs', 10233);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Directory', 8, 2, 'Папка', 'Каталог (папка), где находится файл, должен содержать букву диска при необходимости.', 4, 'ecs', 10234);
INSERT INTO public.export_events_fields VALUES ('ECS.File.DriveLetter', 8, 2, 'Диск', 'Буква диска актуальна только для Windows. Значение должно быть в верхнем регистре и не содержать двоеточие.', 4, 'ecs', 10235);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Path', 8, 2, 'Полный путь', 'Полный путь к файлу, включая имя файла (может содержать буква диска).', 4, 'ecs', 10236);
INSERT INTO public.export_events_fields VALUES ('ECS.File.TargetPath', 8, 2, 'Целевой путь', 'Целевой путь для символических ссылок.', 4, 'ecs', 10237);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Extension', 8, 2, 'Расширение файла', 'Расширение файла без начальной точки. Обратите внимание: если имя файла имеет несколько расширений "example.tar.gz", останется только последнее ("gz", а не "tar.gz").', 4, 'ecs', 10238);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Type', 8, 2, 'Тип файла', 'Тип файла (файл, каталог или символическая ссылка).', 4, 'ecs', 10239);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Device', 8, 2, 'Устройство', 'Устройство ,где располагается файл.', 4, 'ecs', 10240);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Inode', 3, 1, 'Inode', 'Индекс Inode представляющий файл в файловой системе.', 4, 'ecs', 10241);
INSERT INTO public.export_events_fields VALUES ('ECS.File.UID', 8, 2, 'Идентификатор UID', 'ID пользователя (UID) или идентификатор безопасности (SID) файла.', 4, 'ecs', 10242);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Gid', 8, 2, 'Идентификатор группы', 'Идентификатор группы файла.', 4, 'ecs', 10244);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Group', 8, 2, 'Группа', 'Имя группы файла.', 4, 'ecs', 10245);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Mode', 8, 2, 'Режим', 'Восьмеричное представление режима файла (например, 0664)', 4, 'ecs', 10246);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Size', 3, 1, 'Размер файла', 'Размер файла выраженный в байтах,актуально при условии "filetype  = file"', 4, 'ecs', 10247);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Mtime', 11, 5, 'Время изменения файла', 'Время последнего изменения содержимого файла.', 4, 'ecs', 10248);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Ctime', 11, 5, 'Последнее изменение атрибутов', 'Время последнего изменения атрибутов или метаданных файла, при изменении содержимого файла обновляется mtime,поскольку mtime является атрибутом файла изменится и ctime.', 4, 'ecs', 10249);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Created', 11, 5, 'Создан', 'Время создания файла (не все файловые системы хранят время создания файла).', 4, 'ecs', 10250);
INSERT INTO public.export_events_fields VALUES ('ECS.File.Accessed', 11, 5, 'Последнее использование', 'Время последнего использования файла(не все файловые системы хранят врама последнего использования файла).', 4, 'ecs', 10251);
INSERT INTO public.export_events_fields VALUES ('ECS.File.MIMEType', 8, 2, 'MIME', 'MIME определяет формат файла или потока байтов используя https://www.iana.org/assignments/media-types/media-types.xhtml[IANA  official types] если такая возможность есть.Если применимо более одного формата следует использовать более конкретный тип.', 4, 'ecs', 10252);
INSERT INTO public.export_events_fields VALUES ('ECS.Package.Path', 8, 2, 'Путь ПО', 'Путь, по которому установлен пакет ПО.', 4, 'ecs', 10320);
INSERT INTO public.export_events_fields VALUES ('ECS.File.ForkName', 8, 2, 'Форк — это дополнительные данные, связанные с объектом файловой системы.', 'В NTFS это аналогично альтернативному потоку данных (ADS). В Linux форк используется для хранения дополнительных данных с объектом пример: "Zone.Identifer"', 4, 'ecs', 10253);
INSERT INTO public.export_events_fields VALUES ('ECS.Service.Environment', 8, 2, 'Среда работы службы.', 'Уникальный идентификатор запущенной службы. Если служба состоит из большого количества узлов, "service.id" должен быть одинаковым для всех узлов. Этот идентификатор должен однозначно идентифицировать службу. Это делает возможным коррелировать журналы и метрики для одного конкретного сервиса, независимо от того, какой конкретный узел инициировал событие. пример:" d37e5ebfe0ae6c4972dbe9f0174a1637bb8247f6"', 4, 'ecs', 10254);
INSERT INTO public.export_events_fields VALUES ('ECS.Service.Name', 8, 2, 'Название службы.', 'Имя службы, из которого собираются данные. Имя службы обычно дается пользователем. Это позволяет распределенные службы, работающие на нескольких хостах, для корреляции связанные экземпляры на основе имени.', 4, 'ecs', 10255);
INSERT INTO public.export_events_fields VALUES ('ECS.Service.NodeName', 8, 2, 'Имя службы узла', 'Это позволяет двум узлам одной и той же службы работать на одном и том же сервере Следовательно, `service.node.name` должен обычно уникальны для узлов данной службы.', 4, 'ecs', 10256);
INSERT INTO public.export_events_fields VALUES ('ECS.Service.Type', 8, 2, 'Тип Службы', 'Тип службы, из которой собираются данные. Этот тип можно использовать для группировки и корреляции журналов и метрик из одного типа обслуживания', 4, 'ecs', 10257);
INSERT INTO public.export_events_fields VALUES ('ECS.Service.Version', 8, 2, 'Версия службы.', 'Версия службы, из которой были собраны данные. Позволяет просматривать набор данных только для конкретной версии службы', 4, 'ecs', 10258);
INSERT INTO public.export_events_fields VALUES ('ECS.Service.EphemeralId', 8, 2, 'Эфемерный идентификатор этой службы', 'Эфемерный идентификатор этой службы (если он существует). Этот идентификатор обычно меняется при перезапуске, а "service.id" - нет. пример: "8a4f500f"', 4, 'ecs', 10259);
INSERT INTO public.export_events_fields VALUES ('ECS.Service.Address', 8, 2, 'Адреc службы', 'Адрес, откуда были собраны данные о конкретной службе. Это должен быть URI, сетевой адрес (ipv4:port или [ipv6]:port) или путь к ресурсу (сокеты).пример: "172.26.0.2:5432"', 4, 'ecs', 10260);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.Hostname', 8, 2, 'Имя хоста', 'Имя хоста на узле, обычно это имя возвращаемое командой hostname на узле.', 4, 'ecs', 10261);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.Name', 8, 2, 'Расширенное имя хоста', 'Имя хоста. Может содержать то, что возвращает "hostname" в системах Unix, FQDN имя или указанное пользователем.', 4, 'ecs', 10262);
INSERT INTO public.export_events_fields VALUES ('ECS.DNS.ResponseCode', 8, 2, 'Код ответа DNS', 'Код ответа DNS.', 4, 'ecs', 10153);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.ID', 8, 2, 'ID хоста', 'Уникальный идентификатор хоста. Поскольку имя хоста не всегда уникально,имеет использовать данное поле для однозначной идентификации.', 4, 'ecs', 10263);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.IP', 15, 7, 'IP хоста', 'IP хоста.', 4, 'ecs', 10264);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.IP.CountryISOCode', 8, 2, 'Страна хоста', 'Двухбуквенный код страны хоста в стандарте ISO. Вычисляется с помощью баз GeoIP по полю ECS.Host.IP. Пример: ''RU'', ''AM'', ''US'', ''CN''.', 4, 'ecs', 10265);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.IP.City', 8, 2, 'Город хоста', 'Город хоста. Вычисляется с помощью баз GeoIP по полю ECS.Host.IP. Пример: ''Moscow'', ''Красноярск'', ''Montreal'', ''Hague''.', 4, 'ecs', 10266);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.IP.Location', 8, 2, 'Координаты хоста', 'Широта и долгота хоста. Вычисляется с помощью баз GeoIP по полю ECS.Host.IP. Пример: ''-73.614830,45.505918''.', 4, 'ecs', 10267);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.MAC', 8, 10, 'MAC хоста', 'MAC хоста. Предлагается формат записи из RFC 7042.', 4, 'ecs', 10268);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.Type', 8, 2, 'Тип хоста', 'Для облачных провайдеров это может быть компьютер типа t2.medium. Если VM, это может быть контейнер, или другая информация значимый в вашей среде.', 4, 'ecs', 10269);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.Uptime', 3, 1, 'Время работы хоста', 'Время работы хоста в секундах.', 4, 'ecs', 10270);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.Architecture', 8, 2, 'Архитектура ОС', 'Архитектура Операционной системы. пример : "x86_64"', 4, 'ecs', 10271);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.Domain', 8, 2, 'Имя домена хоста', 'Имя домена, членом которого является хост. Например,  в Windows это может быть домен Active Directory или доменное имя NetBIOS. ', 4, 'ecs', 10272);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.CPUUsage', 7, 1, 'Использование процессора, %', ' Процент использования ЦП, нормализованный по количеству ядер ЦП и колеблется от 0 до 1. Коэффициент масштабирования: 1000.', 4, 'ecs', 10273);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.DiskReadBytes', 3, 1, 'Чтение диска на хосте, байт', 'Общее количество байтов успешно прочитанных (агрегированных из всех дисков) с момента последнего сбора метрик.', 4, 'ecs', 10274);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.DiskWriteBytes', 3, 1, 'Чтение на диск на хосте, байт', 'Общее количество байтов успешно записанных (агрегировано из все диски) с момента последнего сбора метрик.', 4, 'ecs', 10275);
INSERT INTO public.export_events_fields VALUES ('ECS.Package.Architecture', 8, 2, 'Архитектура ПО', 'Архитектура ПО.', 4, 'ecs', 10321);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.NetworkIngressBytes', 3, 1, 'Входящих байт на хост', 'Количество байтов, полученных на всех сетевых интерфейсах хостом с момента последнего сбора метрик.', 4, 'ecs', 10276);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.NetworkIngressPackets', 3, 1, 'Входящих пакетов на хосте', 'Количество пакетов, полученных на всех сетевых интерфейсах хост с момента последнего сбора метрик.', 4, 'ecs', 10277);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.NetworkEgressBytes', 3, 1, 'Исходящих байт на хосте', 'Количество байтов, отправленных на все сетевые интерфейсы хостом с момента последнего сбора метрик.', 4, 'ecs', 10278);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.NetworkEgressPackets', 3, 1, 'Исходящих пакетов от хоста', 'Количество пакетов, отправленных на все сетевые интерфейсы хостом  с момента последнего сбора метрик.', 4, 'ecs', 10279);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.Risk.CalculatedScore', 6, 1, 'Балл риска узла', 'Балл классификации риска узла рассчитанный внутри SIEM. От 0 до 100. Шкала: неизвестный/unknown(0-20), низкий/low(20-40),умеренный/moderate(40-70), высокий/high(70-90), критический/critical(>90)Пример: 77.15', 4, 'ecs', 10280);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.Risk.CalculatedScoreNorm', 6, 1, 'Балл риска узла нормализованный', 'Нормализованный балл классификации риска узла рассчитанный внутри SIEM. От 0 до 100. Шкала: неизвестный/unknown(0-20), низкий/low(20-40),умеренный/moderate(40-70), высокий/high(70-90), критический/critical(>90)Пример: 77.15', 4, 'ecs', 10281);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.Risk.CalculatedLevel', 31, 15, 'Риск узла', 'Уровень классификации риска узла рассчитанный внутри SIEM. Возможные значения: неизвестный/unknown(0-20), низкий/low(20-40),умеренный/moderate(40-70), высокий/high(70-90), критический/critical(>90)Пример: high либо высокий', 4, 'ecs', 10282);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.Risk.StaticLevel', 31, 15, 'Риск узла извлечённый', 'Классификация уровня риска узла извлекаемая из события внешней системы, например СОВ. Возможные значения: неизвестный/unknown(0-20), низкий/low(20-40),умеренный/moderate(40-70), высокий/high(70-90), критический/critical(>90)Пример: high либо высокий', 4, 'ecs', 10283);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.Risk.StaticScore', 6, 1, 'Балл риска узла извлечённый', 'Нормализованный балл классификации узла риска рассчитанный внутри SIEM. От 0 до 100. Шкала: неизвестный/unknown(0-20), низкий/low(20-40),умеренный/moderate(40-70), высокий/high(70-90), критический/critical(>90)Пример: 77.15', 4, 'ecs', 10284);
INSERT INTO public.export_events_fields VALUES ('ECS.Host.Risk.StaticScoreNorm', 6, 1, 'Балл риска узла извлечённый нормализованный', 'Нормализованный балл классификации риска узла рассчитанный внутри SIEM. От 0 до 100. Шкала: неизвестный/unknown(0-20), низкий/low(20-40),умеренный/moderate(40-70), высокий/high(70-90), критический/critical(>90)Пример: 77.15', 4, 'ecs', 10285);
INSERT INTO public.export_events_fields VALUES ('ECS.Interface.ID', 8, 2, 'ID интерфейса', 'Идентификатор интерфейса, обычно используется в протоколе SNMP.', 4, 'ecs', 10286);
INSERT INTO public.export_events_fields VALUES ('ECS.Interface.Name', 8, 2, 'Название интерфейса', 'Название интерфейса в системе.', 4, 'ecs', 10287);
INSERT INTO public.export_events_fields VALUES ('ECS.Interface.Alias', 8, 2, 'Псевдоним интерфейса', 'Псевдоним интерфейса в системе, обычно используется в межсетевых экранах для разделения внутренних, внешних и dmz интерфейсов.', 4, 'ecs', 10288);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.MAC', 8, 10, 'MAC устройства сбора', 'MAC-адреса агента сбора. Предлагается формат записи из RFC 7042: Каждый октет (т.е.8-битный байт) представлен двумя  шестнадцатеричными цифрами, дающими значение октета как целое число без знака. Последовательные октеты разделены дефисом. Устройством сбора может выступать физическое устройство сбора информации либо сервер на котором установлены специальные приложения сбора информации о сети, безопасности приложений. Примеры: межсетевой экран, веб-прокси, СОВ, сетевой сенсор, DLP система. Не рекомендуется категорировать как устройство сбора брокеры сообщений (Kafka, RabbitMQ, NATS) и системы ETL (Spark).', 4, 'ecs', 10289);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.IP', 15, 7, 'IP устройства сбора', 'IP адрес устройства сбора. Устройством сбора может выступать физическое устройство сбора информации либо сервер на котором установлены специальные приложения сбора информации о сети, безопасности приложений. Примеры: межсетевой экран, веб-прокси, СОВ, сетевой сенсор, DLP система. Не рекомендуется категорировать как устройство сбора брокеры сообщений (Kafka, RabbitMQ, NATS) и системы ETL (Spark).', 4, 'ecs', 10290);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.IP.CountryISOCode', 8, 2, 'Страна устройства сбора', 'Двухбуквенный код страны устройства сбора в стандарте ISO. Вычисляется с помощью баз GeoIP по полю ECS.Observer.IP. Пример: ''RU'', ''AM'', ''US'', ''CN''.', 4, 'ecs', 10291);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.IP.City', 8, 2, 'Город устройства сбора', 'Город устройства сбора. Вычисляется с помощью баз GeoIP по полю ECS.Observer.IP. Пример: ''Moscow'', ''Красноярск'', ''Montreal'', ''Hague''.', 4, 'ecs', 10292);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.IP.Location', 8, 2, 'Координаты устройства сбора', 'Широта и долгота устройства сбора. Вычисляется с помощью баз GeoIP по полю ECS.Observer.IP. Пример: ''-73.614830,45.505918''.', 4, 'ecs', 10293);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.Hostname', 8, 2, 'Узел устройства сбора', 'Имя узла агента сбора. Устройством сбора может выступать физическое устройство сбора информации либо сервер на котором установлены специальные приложения сбора информации о сети, безопасности приложений. Примеры: межсетевой экран, веб-прокси, СОВ, сетевой сенсор, DLP система. Не рекомендуется категорировать как устройство сбора брокеры сообщений (Kafka, RabbitMQ, NATS) и системы ETL (Spark).', 4, 'ecs', 10294);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.Version', 8, 2, 'Версия устройства сбора', 'Версия устройства сбора.', 4, 'ecs', 10298);
INSERT INTO public.export_events_fields VALUES ('ECS.Organization.ID', 8, 2, 'ID организации', 'ID организации.', 4, 'ecs', 10306);
INSERT INTO public.export_events_fields VALUES ('ECS.Geo.Location', 8, 2, 'Координаты', 'Широта и долгота.', 4, 'ecs', 10198);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.Name', 8, 2, 'Имя устройства сбора', 'Пользовательское имя, которое можно дать устройству сбора. Может быть полезно, например, если несколько межсетевых экранов одной модели используются в организации. Если пользовательское имя не требуется, поле можно оставить пустым. Устройством сбора может выступать физическое устройство сбора информации либо сервер на котором установлены специальные приложения сбора информации о сети, безопасности приложений. Примеры: межсетевой экран, веб-прокси, СОВ, сетевой сенсор, DLP система. Не рекомендуется категорировать как устройство сбора брокеры сообщений (Kafka, RabbitMQ, NATS) и системы ETL (Spark).', 4, 'ecs', 10295);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.Product', 8, 2, 'Устройство сбора', 'Наименование устройства сбора. Устройством сбора может выступать физическое устройство сбора информации либо сервер на котором установлены специальные приложения сбора информации о сети, безопасности приложений. Примеры: межсетевой экран, веб-прокси, СОВ, сетевой сенсор, DLP система. Не рекомендуется категорировать как устройство сбора брокеры сообщений (Kafka, RabbitMQ, NATS) и системы ETL (Spark).', 4, 'ecs', 10296);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.Vendor', 8, 2, 'Производитель устройства сбора', 'Производитель устройства сбора.', 4, 'ecs', 10297);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.SerialNumber', 8, 2, 'Серийный номер устройства сбора', 'Серийный номер устройства сбора. Устройством сбора может выступать физическое устройство сбора информации либо сервер на котором установлены специальные приложения сбора информации о сети, безопасности приложений. Примеры: межсетевой экран, веб-прокси, СОВ, сетевой сенсор, DLP система. Не рекомендуется категорировать как устройство сбора брокеры сообщений (Kafka, RabbitMQ, NATS) и системы ETL (Spark).', 4, 'ecs', 10299);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.Type', 8, 2, 'Тип устройства', ' Тип устройства, который является источником данных. Предварительно определенного списка типов наблюдателей нет. Некоторые примеры: forwarder, firewall, ids, ips, proxy, poller, sensor, APM server. Устройством сбора может выступать физическое устройство сбора информации либо сервер на котором установлены специальные приложения сбора информации о сети, безопасности приложений. Примеры: межсетевой экран, веб-прокси, СОВ, сетевой сенсор, DLP система. Не рекомендуется категорировать как устройство сбора брокеры сообщений (Kafka, RabbitMQ, NATS) и системы ETL (Spark).', 4, 'ecs', 10300);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.Ingress', 23, 8, 'Ingress устройства сбора', 'Информация о входящем подключении наблюдателя содержит, например, номер и имя интерфейса, vlan, информацию о зоне для классификации входящего трафика. Одноканальный (single armed) мониторинг, такой как сетевой датчик на порте диапазона, должен использовать только ECS.Observer.Ingress для категоризации трафика.', 4, 'ecs', 10301);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.IngressZone', 8, 2, 'Ingress временной зоны сбора', 'Сетевая зона входящего трафика, о которой наблюдатель сообщает классифицируя исходную область входящего трафика, например, внутренний, внешний, DMZ, HR, Legal и т.д.Устройством сбора может выступать физическое устройство сбора информации либо сервер на котором установлены специальные приложения сбора информации о сети, безопасности приложений. Примеры: межсетевой экран, веб-прокси, СОВ, сетевой сенсор, DLP система. Не рекомендуется категорировать как устройство сбора брокеры сообщений (Kafka, RabbitMQ, NATS) и системы ETL (Spark).', 4, 'ecs', 10302);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.IO.BytesSkipped', 17, 19, 'Пропуск байт ввода/вывода', 'Массив границ пропуска участков результата операции ввода/вывода в полях ECS.Process.IO.Text и ECS.Process.IO.Bytes. Выводится в формате пар целых чисел [сдвиг1, длина1, сдвиг2, длина2]. Длина массива всегда кратна двум.', 4, 'ecs', 10363);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.SubjectCommonName', 8, 2, 'Конечный субъект x509', 'Общепринятое имя, наименование конечного субъекта', 4, 'ecs', 10602);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.SubjectOrganizationalUnit', 8, 2, 'Подразделение субъекта', 'Название подразделения  субъекта', 4, 'ecs', 10603);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.Egress', 23, 8, 'Egress устройства сбора', 'Информация об исходящем соединении наблюдателя содержит, например, номер и имя интерфейса, vlan, информация о зоне для классификации исходящего трафика. Сетевой датчик на порте диапазона  должен использовать только выход наблюдателя для категоризации трафика. Устройством сбора может выступать физическое устройство сбора информации либо сервер на котором установлены специальные приложения сбора информации о сети, безопасности приложений. Примеры: межсетевой экран, веб-прокси, СОВ, сетевой сенсор, DLP система. Не рекомендуется категорировать как устройство сбора брокеры сообщений (Kafka, RabbitMQ, NATS) и системы ETL (Spark).', 4, 'ecs', 10303);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.NotAfter', 11, 5, 'Дата окончания x509', 'Дата окончания действия сертификата x509.', 4, 'ecs', 10600);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.SubjectDistinguishedName', 8, 2, 'x509 DN', 'Отличительное имя (DN)', 4, 'ecs', 10601);
INSERT INTO public.export_events_fields VALUES ('ECS.Observer.EgressZone', 8, 2, 'Зона трафика устройства сбора', 'Сетевая зона исходящего трафика, о которой агент сбора сообщает для того, чтобы категорировать целевую зону исходящего трафика, например, внутренний, внешний, DMZ, HR, Legal и т.д. Устройством сбора может выступать физическое устройство сбора информации либо сервер на котором установлены специальные приложения сбора информации о сети, безопасности приложений. Примеры: межсетевой экран, веб-прокси, СОВ, сетевой сенсор, DLP система. Не рекомендуется категорировать как устройство сбора брокеры сообщений (Kafka, RabbitMQ, NATS) и системы ETL (Spark).', 4, 'ecs', 10304);
INSERT INTO public.export_events_fields VALUES ('ECS.OS.Type', 8, 2, 'Тип ОС', 'Тип операционной системы. Используемые значения для отнесения к  широким коммерческим семействам: linux, macos, unix, windows, ios, android.', 4, 'ecs', 10307);
INSERT INTO public.export_events_fields VALUES ('ECS.OS.Platform', 8, 2, 'Платформа ОС', 'Платформа операционной системы (например, centos, ubuntu, windows). пример: "darwin".', 4, 'ecs', 10308);
INSERT INTO public.export_events_fields VALUES ('ECS.OS.Name', 8, 2, 'Имя ОС', 'Имя операционной системы без версии.', 4, 'ecs', 10309);
INSERT INTO public.export_events_fields VALUES ('ECS.OS.Full', 8, 2, 'Полное имя ОС', 'Имя операционной системы с версией или с кодом.', 4, 'ecs', 10310);
INSERT INTO public.export_events_fields VALUES ('ECS.OS.Family', 8, 2, 'Семейство ОС', 'Семейство ОС (например, redhat, debian, freebsd, windows).', 4, 'ecs', 10311);
INSERT INTO public.export_events_fields VALUES ('ECS.OS.Kernel', 8, 2, 'Версия ядра', 'Версия ядра ОС в виде необработанной строки.', 4, 'ecs', 10312);
INSERT INTO public.export_events_fields VALUES ('ECS.OS.Version', 8, 2, 'Версия ОС', 'Версия операционной системы. пример "10.14.1".', 4, 'ecs', 10313);
INSERT INTO public.export_events_fields VALUES ('ECS.Package.Version', 8, 2, 'Версия пакета ПО', 'Версия пакета ПО.', 4, 'ecs', 10315);
INSERT INTO public.export_events_fields VALUES ('ECS.Package.BuildVersion', 8, 2, 'Версия сборки пакета ПО', 'Дополнительная информация о версии сборки установленного пакета.', 4, 'ecs', 10316);
INSERT INTO public.export_events_fields VALUES ('ECS.Package.Description', 8, 2, 'Описание пакета ПО', 'Описание пакета ПО.', 4, 'ecs', 10317);
INSERT INTO public.export_events_fields VALUES ('ECS.PE.Product', 8, 2, 'Внутреннее название PE-продукта', 'Внутреннее название продукта PE-файла, присвоенное при компиляции.', 4, 'ecs', 10330);
INSERT INTO public.export_events_fields VALUES ('ECS.PE.Company', 8, 2, 'Внутреннее название PE-компании', 'Внутреннее название компании PE-файла, присвоенное при компиляции.', 4, 'ecs', 10331);
INSERT INTO public.export_events_fields VALUES ('ECS.Log.SyslogSeverityName', 8, 2, 'Важность источника', 'Числовой уровень важности события журнала, если он доступен. Если источник публикации  событий через системный журнал предоставляет другую важность или значение (например, брандмауэр, IDS), важность текста вашего источника должна быть (log.level). Если источник события не указывает четкую важность, при желании вы можете скопировать важность системного журнала в (log.level).', 4, 'ecs', 10342);
INSERT INTO public.export_events_fields VALUES ('ECS.Log.SyslogPriority', 3, 1, 'Приоритет syslog', 'Числовое значение приоритета события syslog. Согласно RFC 5424 и 3164 приоритетом является 8 * Facility + Severity .', 4, 'ecs', 10345);
INSERT INTO public.export_events_fields VALUES ('ECS.Network.Type', 8, 2, 'Тип сети', 'Слой сети согласно спецификации OSI: ipv4, ipv6, ipsec, pim и др.', 4, 'ecs', 10348);
INSERT INTO public.export_events_fields VALUES ('ECS.Network.IANANumber', 8, 2, 'IANA', 'Номер протокола IANA согласно стандарта https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml. Используется в протоколах sFlow, NetFlow', 4, 'ecs', 10349);
INSERT INTO public.export_events_fields VALUES ('ECS.Network.Transport', 8, 2, 'Сетевой транспорт', 'То же что и ECS.Network.IANANumber, но используется текстовое представление номера протокола IANA: udp, tcp, ipv6-icmp и др.', 4, 'ecs', 10350);
INSERT INTO public.export_events_fields VALUES ('ECS.Network.Application', 8, 2, 'Протокол приложения', 'Протокол приложения: имя может быть произвольным для различных сервисов, может использоваться протокол популярных приложений - whatsapp, signal, telegram, skype.', 4, 'ecs', 10351);
INSERT INTO public.export_events_fields VALUES ('ECS.Network.Protocol', 8, 2, 'L7 протокол', 'Сетевой протокол L7, например http или lumberjack.', 4, 'ecs', 10352);
INSERT INTO public.export_events_fields VALUES ('ECS.Network.Bytes', 3, 1, 'Байт передано', 'Число байт, переданных на обоих направлениях. Является суммой ECS.Destination.Bytes и ECS.Source.Bytes если эти поля не пустые.', 4, 'ecs', 10356);
INSERT INTO public.export_events_fields VALUES ('ECS.Package.Size', 3, 1, 'Размер пакета ПО', 'Размер пакета в байтах.', 4, 'ecs', 10318);
INSERT INTO public.export_events_fields VALUES ('ECS.Package.Checksum', 8, 2, 'Контрольная сумма ПО', 'Контрольная сумма пакета ПО.', 4, 'ecs', 10322);
INSERT INTO public.export_events_fields VALUES ('ECS.Package.InstallScope', 8, 2, 'Пространство установки пакета', 'Пространство установки пакета в системе, например, локальный, пользовательский, глобальный.', 4, 'ecs', 10323);
INSERT INTO public.export_events_fields VALUES ('ECS.Package.License', 8, 2, 'Лицензия ПО', 'Лицензия, под которой был выпущен установочный пакет. Необходимо указать короткое имя, например, идентификатор лицензии из списка лицензий SPDX (https://spdx.org/licenses/).', 4, 'ecs', 10324);
INSERT INTO public.export_events_fields VALUES ('ECS.Package.Reference', 8, 2, 'Ссылка ПО', ' В установочном пакете может содержаться: домашняя страница или URL  программного обеспечения. При наличии попадает в данное поле.', 4, 'ecs', 10325);
INSERT INTO public.export_events_fields VALUES ('ECS.Package.Type', 8, 2, 'Тип пакета ПО', 'Тип упаковки. Он должен содержать тип файла пакета. Примеры: rpm, dpkg, brew, npm, gem, nupkg, jar.', 4, 'ecs', 10326);
INSERT INTO public.export_events_fields VALUES ('ECS.PE.OriginalFileName', 8, 2, 'Внутреннее имя PE-файла', 'Внутреннее имя PE-файла, данное во время компиляции.', 4, 'ecs', 10327);
INSERT INTO public.export_events_fields VALUES ('ECS.PE.FileVersion', 8, 2, 'Внутренняя версия PE-файла', 'Внутренняя версия файла, предоставляемая во время компиляции.  пример: "6.3.9600.17415"', 4, 'ecs', 10328);
INSERT INTO public.export_events_fields VALUES ('ECS.PE.Description', 8, 2, 'Внутреннее описание PE-файла', 'Внутреннее описание PE-файла,присвоенное во время компиляции.', 4, 'ecs', 10329);
INSERT INTO public.export_events_fields VALUES ('ECS.Log.SyslogFacilityName', 8, 2, 'Имя категории', 'Текстовое имя системного журнала ,событий журнала, если доступно.', 4, 'ecs', 10344);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomString5', 8, 2, 'Строка cs5', 'CEF пользовательское поле для строки №5.', 2, 'syslog', 2045);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomString6', 8, 2, 'Строка cs6', 'CEF пользовательское поле для строки №6.', 2, 'syslog', 2046);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomString7', 8, 2, 'Строка cs7', 'CEF пользовательское поле для строки №7.', 2, 'syslog', 2047);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomString8', 8, 2, 'Строка cs8', 'CEF пользовательское поле для строки 8.', 2, 'syslog', 2048);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.EntityID', 8, 2, 'ID процесса', 'Уникальный идентификатор процесса. Реализация определяется источником данных, например, UUID сгенерированный процессом, Sysmon, GUID процесса или хэш некоторых однозначно идентифицирующих процесс компонентов. Создание глобального уникального идентификатора - обычная используется для повторного использования PID.', 4, 'ecs', 10366);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.Name', 8, 2, 'Имя процесса', 'Иногда называется именем программы или иметь сокращённый вид (может значительно отличаться).', 4, 'ecs', 10367);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.PGID', 3, 1, 'PID группы процессов', 'Идентификатор группы процессов, к которой принадлежит процесс.', 4, 'ecs', 10368);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.CommandLine', 8, 2, 'Набор команд', 'Полная командная строка, которая запустила процесс, включая абсолютный путь в исполняемый файл и все аргументы.', 4, 'ecs', 10369);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.Args', 8, 2, 'Массив процесса', 'Массив аргументов процесса, начиная с абсолютного пути к исполняемому файл', 4, 'ecs', 10370);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.ArgsCount', 3, 1, 'Длина массива', 'Длина массива process.args. используется для запроса или выполнения анализа сегмента, с целью узнать сколько аргументов было разделено при запуска процесса. Дополнительные аргументы могут быть признаком подозрительной активности.', 4, 'ecs', 10371);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.Executable', 8, 2, 'Путь файла процесса', 'Полный путь к исполняемому файлу процесса.', 4, 'ecs', 10372);
INSERT INTO public.export_events_fields VALUES ('ECS.Registry.Value', 8, 2, 'Имя записанного значения', 'Имя записанного значения.', 4, 'ecs', 10385);
INSERT INTO public.export_events_fields VALUES ('ECS.Registry.Path', 8, 2, 'Путь значения реестра', 'Полный путь значения реестра от корня, то есть включая префикс-блок HKEY_CLASSES_ROOT и подобные.', 4, 'ecs', 10386);
INSERT INTO public.export_events_fields VALUES ('ECS.Registry.DataType', 8, 2, 'Тип данных реестра', 'Стандартный для реестра Windows тип данных.', 4, 'ecs', 10387);
INSERT INTO public.export_events_fields VALUES ('ECS.Registry.DataStrings', 8, 2, 'Строки реестра', 'Заполняется как массив при записи строковых данных в реестр.', 4, 'ecs', 10388);
INSERT INTO public.export_events_fields VALUES ('ECS.Registry.DataBytes', 8, 2, 'Байты реестра', 'Исходные байты, записанные в кодировке base64. Для операций реестра Windows, таких как "SetValueEx" и "RegQueryValueEx" соответствует данным, указанным в lp_data. обеспечивает лучшее восстановление и должно быть заполнено для "REG_BINARY" закодированными значения.', 4, 'ecs', 10389);
INSERT INTO public.export_events_fields VALUES ('ECS.Related.IP', 16, 18, 'IP адреса события', 'Все IP адреса события', 4, 'ecs', 10390);
INSERT INTO public.export_events_fields VALUES ('ECS.Related.User', 9, 2, 'Пользователи события', 'Все имена пользователей события.', 4, 'ecs', 10391);
INSERT INTO public.export_events_fields VALUES ('ECS.Related.Hash', 9, 2, 'Хеши события', 'Все хеши события. Поиск хешей помогает, когда вы не знаете, какой алгоритм хеширования (какое имя ключа следует искать).', 4, 'ecs', 10392);
INSERT INTO public.export_events_fields VALUES ('ECS.Related.Hosts', 9, 2, 'Имена узлов', 'Все имена узлов события, например, доменные имена, имена рабочих станций и псевдонимы.', 4, 'ecs', 10393);
INSERT INTO public.export_events_fields VALUES ('ECS.Rule.ID', 8, 2, 'ID правила', 'ID правила, уникальный в пределах области действия агента, наблюдателя или другого объекта, использующего правило для обнаружения событий.', 4, 'ecs', 10394);
INSERT INTO public.export_events_fields VALUES ('ECS.Rule.UUID', 8, 2, 'UUID правила', 'UUID правила в группе агентов, наблюдателя или других объектов использующих правило для обнаружения событий.', 4, 'ecs', 10395);
INSERT INTO public.export_events_fields VALUES ('ECS.Rule.Version', 8, 2, 'Версия правила', 'Версия или редакция правила используемого для анализа.', 4, 'ecs', 10396);
INSERT INTO public.export_events_fields VALUES ('ECS.Rule.Name', 8, 2, 'Имя правила', 'Имя правила или сигнатуры, создающей событие.', 4, 'ecs', 10397);
INSERT INTO public.export_events_fields VALUES ('ECS.Rule.Description', 8, 2, 'Описание правила', 'Описание правила создающего событие.', 4, 'ecs', 10398);
INSERT INTO public.export_events_fields VALUES ('ECS.Rule.Category', 8, 2, 'Категория правила', 'Категория правила (ключевое слово), определяющее категорию правила. Пример: "утечка информации".', 4, 'ecs', 10399);
INSERT INTO public.export_events_fields VALUES ('ECS.Rule.Ruleset', 8, 2, 'Набор правил', 'Имя набора правил, политик или групп для создания события. Пример: "фильтр стандартных протоколов".', 4, 'ecs', 10400);
INSERT INTO public.export_events_fields VALUES ('ECS.Rule.Reference', 8, 2, 'URL правила', 'Ссылка URL на дополнительную информацию о правиле, использовавшегося при генерации события, может указывать на документацию поставщика.', 4, 'ecs', 10401);
INSERT INTO public.export_events_fields VALUES ('ECS.Rule.Author', 8, 2, 'Автор правила', 'Имя организации, псевдоним автора или авторов создающих правило, используемого для создания события.', 4, 'ecs', 10402);
INSERT INTO public.export_events_fields VALUES ('ECS.Rule.License', 8, 2, 'Лицензия правила', 'Имя лицензии правила,используемой для создания события.  Пример: (Apache 2.0.)', 4, 'ecs', 10403);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.Address', 8, 2, 'Адрес сервера', 'Некоторых адреса сервера в событии могут быть определены неоднозначно, события могут указывать IP, домен или ядро процессора. Стоит всегда сохранять исходное значение и копировать его  в соответствующее поле, например IP.', 4, 'ecs', 10404);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.IP.City', 8, 2, 'Город сервера', 'Город сервера. Вычисляется с помощью баз GeoIP по полю ECS.Destination.IP.Пример: ''Moscow'', ''Красноярск'', ''Montreal'', ''Hague''.', 4, 'ecs', 10407);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.IP.Location', 8, 2, 'Координаты сервера', 'Широта и долгота сервера. Вычисляется с помощью баз GeoIP по полю ECS.Destination.IP. Пример: ''-73.614830,45.505918''.', 4, 'ecs', 10408);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.MAC', 8, 10, 'MAC сервера', 'MAC адрес сервера.', 4, 'ecs', 10410);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.Domain', 8, 2, 'Домен сервера', 'Домен сервера.', 4, 'ecs', 10411);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.RegisteredDomain', 8, 2, 'Наивысший сервера', 'Самый высокий зарегистрированный домен сервера без поддомена. Например, для домена источника "foo.example.ru" значение зарегистрированного домена будет "example.ru". Алгоритм определения зарегистрированного домена использует список суффиксов из http://publicsuffix.org .', 4, 'ecs', 10412);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.TopLevelDomain', 8, 2, 'eTLD сервера', 'Домен первого уровня (eTLD), например, для "example.ru" таким доменом будет считаться "ru".', 4, 'ecs', 10413);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.Subdomain', 8, 2, 'Поддомен сервера', 'Поддомен, например, для "sub2.sub1.example.ru" таким доменом будет считаться "sub2.sub1".', 4, 'ecs', 10414);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.Bytes', 3, 1, 'Байт от сервера клиенту', 'Количество байт отправленных от сервера клиенту.', 4, 'ecs', 10415);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.Packets', 3, 1, 'Пакетов от сервера клиенту', 'Количество пакетов отправленных от сервера клиенту.', 4, 'ecs', 10416);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.NatIP', 15, 7, 'IP NAT сессия сервера', 'IP сессий NAT назначения (например, интернет в частную dmz). Обычно включает в себя пути балансировщиков нагрузки, межсетевых экранов, роутеров.', 4, 'ecs', 10417);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.NatPort', 3, 1, 'Порт NAT сервера', 'Порт сессий NAT сервер назначения. Обычно включает в себя пути балансировщиков нагрузки, межсетевых экранов, роутеров', 4, 'ecs', 10418);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.User.ID', 8, 2, 'ID пользователя сервера', 'Идентификатор пользователя сервера, например, ''S-1-5-21-202424912787-2692429404-2351956786-1000''.', 4, 'ecs', 10419);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.User.Name', 8, 2, 'Пользователь сервера', 'Сокращённое имя пользователя или логин на сервере, например, p.picasso.', 4, 'ecs', 10420);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.User.FullName', 8, 2, 'Имя пользователя сервера', 'Полное имя пользователя на сервере, например Pablo Picasso.', 4, 'ecs', 10421);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.User.Email', 8, 2, 'Почта пользователя сервера', 'Почта пользователя на сервере.', 4, 'ecs', 10422);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.User.Hash', 8, 2, 'Хеш пользователя сервера', 'Уникальный хеш пользователя на сервере для сопоставления информации о пользователе в анонимной форме. Полезно, если *.User.ID или *.User.Name содержат  конфиденциальную информацию и не могут быть использованы.', 4, 'ecs', 10423);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments', 8, 8, 'Детали индикаторов', 'Список детальных объектов срабатывания индикаторов и репутационных списков в момент обогащения события.', 4, 'ecs', 10426);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicators', 9, 17, 'Срабатывания индикаторов', 'Список сработавших списков индикаторов и репутационных списков в момент обогащения события.', 4, 'ecs', 10427);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.AS.Number', 20, 1, 'Номер ASN индикатора атаки', 'Уникальный номер автономной системы (ASN) для индикатора атаки.', 4, 'ecs', 10428);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.AS.Name', 8, 2, 'ASN индикатора атаки', 'Уникальный номер автономной системы (ASN) для индикатора атаки.', 4, 'ecs', 10429);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.FirstSeen', 11, 5, 'Первое упоминание атаки', 'Дата и время обнаружения источником либо группой расследования данного индикатора атаки.', 4, 'ecs', 10430);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.LastSeen', 11, 5, 'Последнее упоминание атаки', 'Дата и время последнего наблюдения данного индикатора атаки источником либо группой расследования ', 4, 'ecs', 10431);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.ModifiedAt', 11, 5, 'Обновление индикатора атаки', 'Дата и время последнего обновления данного индикатора атаки источником либо группой расследования ', 4, 'ecs', 10432);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.Sightings', 1, 1, 'Проявления атаки', 'Количество раз, когда данный индикатор был замечен при осуществлении угрожающей деятельности. ', 4, 'ecs', 10433);
INSERT INTO public.export_events_fields VALUES ('ECS.PE.Imphash', 8, 2, 'Хэш импорта файла', 'Хэш импорта PE-файла. Может использоваться даже после перекомпиляции или других преобразований. https://www.fireeye.com/blog/threat-research/2014/01/tracking-malware-import-hashing.html', 4, 'ecs', 10332);
INSERT INTO public.export_events_fields VALUES ('ECS.PE.Architecture', 8, 2, 'Архитектура ЦПУ PE-файла', 'Архитектура ЦПУ PE-файла.', 4, 'ecs', 10333);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.Port', 5, 1, 'Порт сервера', 'Порт сервера.', 4, 'ecs', 10409);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.Type', 32, 15, 'Тип индикатора', 'Тип индикатора, представленный в STIX 2.0. Рекомендуемые значения: autonomous-system, artifact, domain-name, email-addr, url', 4, 'ecs', 10434);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.Confidence', 8, 2, 'Рейтинг достоверности индикатора', 'Определяет независимый рейтинг достоверности с использованием шкалы None/Low/Medium/High, определенной в Приложении A структуры STIX 2.1. Зависит от поставщика шкалы достоверности могут быть добавлены как настраиваемые поля.', 4, 'ecs', 10437);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.IP', 15, 7, 'IP-адрес индикатора', 'Идентифицирует индикатор угрозы как IP-адрес (независимо от направления).', 4, 'ecs', 10439);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.Port', 8, 2, 'Порт индикатора', 'Идентифицирует индикатор угрозы как номер порта (независимо от направления).', 4, 'ecs', 10440);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.Email.Address', 8, 2, 'Электронный адрес индикатора', 'Идентифицирует индикатор угрозы как адрес электронной почты (независимо от направления).', 4, 'ecs', 10441);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.Marking.TLP', 8, 2, 'TLP индикатора', 'Маркировка Traffic light protocol (TLP) индикатора. Возможные значения: WHITE/CLEAR/GREEN/AMBER/AMBER+STRICT/RED', 4, 'ecs', 10442);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.Marking.TLP.Version', 8, 2, 'Версия TLP индикатора', 'Версия маркировки Traffic light protocol (TLP) индикатора. Возможные значения: 1.0/2.0', 4, 'ecs', 10443);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.Reference', 8, 2, 'URL ссылки на индикатор', 'URL-адрес ссылки на дополнительную информацию об этом индикаторе. Пример:" https://system.example.com/indicator/0001234"', 4, 'ecs', 10444);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.Provider', 8, 2, 'Поставщик индикаторов', 'Имя поставщика индикатора. Пример:"lrz_urlhaus"', 4, 'ecs', 10445);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Matched.Atomic', 8, 2, 'Совпадение по', 'Атомарное значение индикатора, совпавшее с полем события. Пример: bad-domain.com', 4, 'ecs', 10446);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Matched.Field', 8, 2, 'Совпадение индикатора', 'Идентифицирует поле атомарного индикатора, которое соответствует конечной точке локальной среды или сетевому событию.Пример: "file.hash.sha256"', 4, 'ecs', 10447);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Matched.ID', 8, 2, 'ID совпадающего индикатора', 'Идентифицирует _id индикаторного документа, обогащающего событие.Пример:"ff93aee5-86a1-4a61-b0e6-0cdc313d01b5"', 4, 'ecs', 10448);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Matched.Index', 8, 2, 'ID совпадения индикатора', 'ID события с индикатором атаки, обогатившего событие.', 4, 'ecs', 10449);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Matched.Occurred', 11, 5, 'Время совпадения', 'Указывает, когда было сгенерировано соответствие индикатора.Пример:"2021-10-05T17:00:58.326Z"', 4, 'ecs', 10450);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Matched.Type', 8, 2, 'Тип индикатора соответствует', 'Определяет тип совпадения, из-за которого событие было дополнено данным индикатором.Пример:"indicator_match_rule"', 4, 'ecs', 10451);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Framework', 8, 2, 'Матрица атак', 'Источник категоризации и классификации тактик и техник угроз. Классификация может предоставляться системами обнаружения вторжения  или ретроспективно привязана к событиям, например БДУ ФСТЭК или MITRE ATT&CK®', 4, 'ecs', 10452);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.GroupAlias', 8, 2, 'Псевдоним(ы) группы атаки', 'Один или несколько (через запятую) псевдонимов группы набора активностей ассоциируемых со вторжением которая отслеживается в сообществе специалистов ИБ под неким общим названием. Можно использовать MITRE ATT&CK® group alias(es).', 4, 'ecs', 10453);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.Description', 8, 2, 'Описание индикатора угрозы', 'Описание угрозы на которую указывает индикатор.', 4, 'ecs', 10438);
INSERT INTO public.export_events_fields VALUES ('ECS.Log.Syslog', 23, 8, 'Метаданные syslog', 'Метаданные события syslog.', 4, 'ecs', 10346);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.GroupID', 8, 2, 'ID группы атаки', 'Идентификатор группы набора активностей ассоциируемых со вторжением которые отслеживаются в сообществе специалистов ИБ под неким общим названием. Можно использовать MITRE ATT&CK® group id.', 4, 'ecs', 10454);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.GroupName', 8, 2, 'Группа атаки', 'Имя группы набора активностей ассоциируемых со вторжением которые отслеживаются в сообществе специалистов ИБ под неким общим названием. Можно использовать MITRE ATT&CK® group name.', 4, 'ecs', 10455);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Group.Reference', 8, 2, 'Справочный URL атаки', 'Адрес сайта где можно найти описание группы набора активностей  ассоциируемых со вторжением которые отслеживаются в сообществе специалистов ИБ под неким общим названием. Можно использовать MITRE ATT&CK® reference URL.', 4, 'ecs', 10456);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicator.FirstSeen', 11, 5, 'Первое упоминание атаки', 'Дата и время обнаружения источником либо группой расследования данного индикатора атаки. ', 4, 'ecs', 10457);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicator.LastSeen', 11, 5, 'Последнее упоминание атаки', 'Дата и время последнего наблюдения данного индикатора атаки источником либо группой расследования ', 4, 'ecs', 10458);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicator.Sightings', 1, 1, 'Проявлений атаки', 'Дата и время последнего обновления данного индикатора атаки источником либо группой расследования ', 4, 'ecs', 10460);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicator.Type', 8, 2, 'Тип индикатора', 'Тип индикатора, представленный Cyber ​​Observable в STIX 2.0.Рекомендуемые значения:"autonomous-system,artifact,domain-name,email-addr,url" ', 4, 'ecs', 10461);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicator.Description', 8, 2, 'Описание индикатора', 'Описывает тип действия, предпринятого угрозой. пример: "IP x.x.x.x был замечен при доставке Angler EK."', 4, 'ecs', 10462);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicator.Scanner.Stats', 2, 1, 'Статистика сканера', 'Количество поставщиков AV/EDR, успешно обнаруживших вредоносный файл или URL-адрес. пример: "4"', 4, 'ecs', 10463);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicator.Confidence', 8, 2, 'Рейтинг достоверности индикатора', 'Определяет рейтинг достоверности, не зависящий от поставщика, с использованием шкалы «Нет/Низкий/Средний/Высокий», определенной в Приложении A структуры STIX 2.1. Зависит от поставщика шкалы достоверности могут быть добавлены как настраиваемые поля. пример:"Medium"', 4, 'ecs', 10464);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicator.IP', 15, 7, 'IP-адрес индикатора', 'Идентифицирует индикатор угрозы как IP-адрес (независимо от направления).', 4, 'ecs', 10465);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicator.Port', 8, 2, 'Порт индикатора', 'Идентифицирует индикатор угрозы как номер порта (независимо от направления).', 4, 'ecs', 10466);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicator.Email.Address', 8, 2, 'Email индикатора', 'Идентифицирует индикатор угрозы как адрес электронной почты (независимо от направления).', 4, 'ecs', 10467);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicator.Marking.TLP', 8, 2, 'TLP', 'Маркировка Traffic light protocol (TLP) индикатора. Возможные значения: WHITE/CLEAR/GREEN/AMBER/AMBER+STRICT/RED', 4, 'ecs', 10468);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicator.Marking.TLP.Version', 8, 2, 'Версия TLP', 'Версия маркировки Traffic light protocol (TLP) индикатора. Возможные значения: 1.0/2.0', 4, 'ecs', 10469);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicator.Reference', 8, 2, 'URL на индикатор', 'URL-адрес ссылки на дополнительную информацию об этом индикаторе. Пример:" https://system.example.com/indicator/0001234"', 4, 'ecs', 10470);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicator.Provider', 8, 2, 'Поставщик индикаторов', 'Имя поставщика индикатора. Пример:"lrz_urlhaus"', 4, 'ecs', 10471);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Software.ID', 8, 2, 'ID ПО атаки по MITRE/ФСТЭК', 'Идентификатор программного обеспечения, используемого этой угрозой для поведения, которое обычно моделируется с помощью MITRE ATT&CK®.Пример:"S0552"', 4, 'ecs', 10472);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Software.Name', 8, 2, 'ПО атаки', 'Название программного обеспечения, используемого этой угрозой для поведения, которое обычно моделируется с помощью MITRE ATT&CK®. Пример:"AdFind"', 4, 'ecs', 10473);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Software.Alias', 8, 2, 'Псевдоним ПО атаки', 'Псевдоним(ы) программного обеспечения для набора связанных действий по вторжению, которые отслеживаются по общему имени в сообщество безопасности. пример:"AdFind"', 4, 'ecs', 10474);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ClientIssuer', 8, 2, 'Имя субъекта выпустившего x.509', 'Отличительное имя субъекта, выдавшего сертификат x.509,представленного клиентом.', 4, 'ecs', 10500);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Software.Platforms', 8, 2, 'Платформы ПО атаки', 'Платформы программного обеспечения, используемого этой угрозой для поведения, обычно моделируются с помощью MITRE ATT&CK®. пример: [ "Windows" ] ', 4, 'ecs', 10475);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Enrichments.Indicator.ScannerStats', 2, 1, 'Статистика сканера', 'Количество поставщиков AV/EDR, успешно обнаруживших вредоносный файл или URL-адрес.пример: "4"', 4, 'ecs', 10436);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Software.Reference', 8, 2, 'URL описания ПО', 'Ссылочный URL-адрес программного обеспечения, используемого этой угрозой для поведения, которое обычно моделируется с помощью MITRE ATT&CK®.пример: "https://attack.mitre.org/software/S0552/" ', 4, 'ecs', 10476);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Software.Type', 8, 2, 'Тип ПО', 'Тип программного обеспечения, используемого этой угрозой для поведения, которое обычно моделируется с помощью MITRE ATT&CK®. пример: "Tool" ', 4, 'ecs', 10477);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Tactic.ID', 8, 2, 'ID тактики', 'ID тактики, использованной этой угрозой. Например, для MITRE ATT&CK® - TA0002', 4, 'ecs', 10478);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Tactic.Name', 8, 2, 'Название тактики', 'Название тактики, использованной этой угрозой. Например, для MITRE ATT&CK®, https://attack.mitre.org/tactics/TA0002/.', 4, 'ecs', 10479);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Tactic.Reference', 8, 2, 'URL тактики', 'URL-адрес тактики, использованной этой угрозой.  Например, для MITRE ATT&CK®, https://attack.mitre.org/tactics/TA0002/ .', 4, 'ecs', 10480);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Technique.ID', 8, 2, 'ID техники угрозы', 'ID техники, использованной этой угрозой. Например, для MITRE ATT&CK®,  https://attack.mitre.org/techniques/T1059/ .', 4, 'ecs', 10481);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Technique.Name', 8, 2, 'Название техники угрозы', 'Название техники, использованной этой угрозой. Например, для MITRE ATT&CK®, https://attack.mitre.org/techniques/T1059/ .', 4, 'ecs', 10482);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Technique.Reference', 8, 2, 'URL техники атаки', ' URL-адрес c информацией о технике, используемой этой угрозой. Например, для MITRE ATT&CK®, https://attack.mitre.org/techniques/T1059/ .', 4, 'ecs', 10483);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Technique.Subtechnique.ID', 8, 2, 'ID вспомогательной техники', 'Полный ID вспомогательной техники, используемой угрозой. Пример MITRE ATT&CK® - T1059.001 для https://attack.mitre.org/techniques/T1059/001/ .', 4, 'ecs', 10484);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Technique.Subtechnique.Name', 8, 2, 'Имя вспомогательной техники', 'Название вспомогательной техники, используемой этой угрозой. Например, для MITRE ATT&CK®, https://attack.mitre.org/techniques/T1059/001/).', 4, 'ecs', 10485);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Technique.Subtechnique.Reference', 8, 2, 'URL вспомогательной техники', 'URL вспомогательной техники, используемой  угрозой. Например, для MITRE ATT&CK®, https://attack.mitre.org/techniques/T1059/001/.', 4, 'ecs', 10486);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.FSTEK.Tactic', 8, 2, 'Тактика по ФСТЭК', 'Тактика по ФСТЭК', 4, 'ecs', 10487);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.FSTEK.Technique', 8, 2, 'Техника по ФСТЭК', 'Техника по ФСТЭК', 4, 'ecs', 10488);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.Version', 8, 2, 'Версия TLS', 'Числовая часть версии, извлеченная из исходной строки, например, 1.2', 4, 'ecs', 10489);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.VersionProtocol', 8, 2, 'Имя протокола TLS', 'Нормализованное имя протокола в нижнем регистре, извлеченное из исходной строки.', 4, 'ecs', 10490);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.Cipher', 8, 2, 'Алгоритм TLS', 'Строка, указывающая алгоритм шифр, используемый во время текущего соединения.', 4, 'ecs', 10491);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.Curve', 8, 2, 'Кривая шифра TLS', 'Строка, указывающая кривую, используемую для данного шифра, если присутствует.', 4, 'ecs', 10492);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.Resumed', 13, 6, 'Продолжение сессии TLS', 'Логический флаг, указывающий, было ли это TLS-соединение возобновлено после существующего согласования TLS.', 4, 'ecs', 10493);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.Established', 13, 6, 'Успех установки TLS', 'Логический флаг, указывающий, было ли согласование TLS успешным, и статус перехода на зашифрованный туннель.', 4, 'ecs', 10494);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.NextProtocol', 8, 2, 'Туннелируемый протокол TLS', 'Строка, указывающая туннелируемый протокол. По значениям в реестре IANA (https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids), эта строка должна быть в нижнем регистре.', 4, 'ecs', 10495);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ClientJa3', 8, 2, 'Хеш рукопожатия TLS', 'Хеш, который идентифицирует клиентов в зависимости от того, как они выполняют SSL / TLS рукопожатие.', 4, 'ecs', 10496);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ClientServerName', 8, 2, 'SNI TLS', 'SNI-расширение протокола TLS, функция которого позволяет узнать имя хоста клиента с которого он пытается подключиться к серверу. Когда это значение доступно, оно должно быть скопировано в "ECS.Destination.Domain".', 4, 'ecs', 10497);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ClientSupportedCiphers', 8, 2, 'Шифры клиента TLS', 'Массив шифров, предлагаемых клиентом во время подключения.', 4, 'ecs', 10498);
INSERT INTO public.export_events_fields VALUES ('ECS.Threat.Indicator.ModifiedAt', 11, 5, 'Обновление индикатора атаки', 'Дата и время последнего обновления данного индикатора атаки источником либо группой расследования ', 4, 'ecs', 10459);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ClientSubject', 8, 2, 'Имя субъекта x.509', 'Отличительное имя субъекта сертификата x.509, представленного клиентом.', 4, 'ecs', 10499);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ClientNotBefore', 11, 5, 'Начало действия сертификата', ' Дата / Время, указывающее, когда сертификат клиента впервые считается действительным.', 4, 'ecs', 10501);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ClientNotAfter', 11, 5, 'Окончание действия сертификата', 'Дата / время, указывающее, когда сертификат клиента перестаёт быть действительный.', 4, 'ecs', 10502);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ClientCertificateChain', 8, 2, 'Цепочка сертификатов', 'Массив сертификатов в кодировке PEM, составляющих цепочку сертификатов предложенных клиентом. Обычно это исключает сертификат клиента, поскольку это значение должно быть первым сертификатом в цепи.', 4, 'ecs', 10503);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ClientCertificate', 8, 2, 'Автономный сертификат', 'Автономный сертификат в кодировке PEM, предлагаемый клиентом. Обычно уже присутствует в списке', 4, 'ecs', 10504);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ClientHashMD5', 8, 2, 'MD5 сертификата TLS', 'Отпечаток сертификата предложенного клиентом с использованием MD5 в версии DER. Для согласованности с другим значением хеша,  это значение должно быть отформатировано как хеш в верхнем регистре.', 4, 'ecs', 10505);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ClientHashSHA1', 8, 2, 'SHA1 сертификата TLS', 'Отпечаток сертификата предложенного клиентом с использованием SHA1 в версии DER. Для согласованности с другим значением хеша,  это значение должно быть отформатировано как хеш в верхнем регистре.', 4, 'ecs', 10506);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ClientHashSHA256', 8, 2, 'Отпечаток сертификата SHA256 ', 'Отпечаток сертификата предложенного клиентом с использованием SHA256 в версии DER. Для согласованности с другим значением хеша,  это значение должно быть отформатировано как хеш в верхнем регистре.', 4, 'ecs', 10507);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ServerSubject', 8, 2, 'Субъект сертификата x.509', 'Субъект сертификата x.509, представленного сервером.', 4, 'ecs', 10509);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ServerIssuer', 8, 2, 'Издатель сертификата', 'Субъект выпустивший сертификат x.509, представленного сервером.', 4, 'ecs', 10510);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ServerNotBefore', 11, 5, 'Начало сертификата сервера', 'Отметка времени, указывающая, когда сертификат сервера впервые считается действительным.', 4, 'ecs', 10511);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ServerNotAfter', 11, 5, 'Окончание сертификата сервера', 'Дата / время, указывающее, когда сертификат клиента перестаёт быть действительный.', 4, 'ecs', 10512);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ServerCertificateChain', 8, 2, 'Цепочка сертификатов сервера', 'Массив сертификатов в кодировке PEM, составляющих цепочку сертификатов предложенный сервером. Обычно исключает "server.certificate", поскольку это значение должно быть первым сертификатом в цепи.', 4, 'ecs', 10513);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ServerCertificate', 8, 2, 'Автономный сертификат сервера', 'Автономный сертификат сервера в кодировке PEM, предлагаемый клиентом. Обычно уже присутствует в списке.', 4, 'ecs', 10514);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ServerHashMD5', 8, 2, 'Отпечаток сертификата MD5 сервера', 'Отпечаток сертификата с использованием MD5 в версии DER-кодировки. Сертификат, предлагаемый сервером для согласованности с другим значением хеша. Это значение должно быть отформатировано как хеш в верхнем регистре.', 4, 'ecs', 10515);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ServerHashSHA1', 8, 2, 'Отпечаток сертификата SHA1 сервера', 'Отпечаток сертификата с использованием SHA1 в версии DER-кодировки. Сертификат, предлагаемый сервером для согласованности с другим значением хеша. Это значение должно быть отформатировано как хеш в верхнем регистре.', 4, 'ecs', 10516);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ServerHashSHA256', 8, 2, 'Отпечаток сертификата SHA256 сервера', 'Отпечаток сертификата с использованием SHA256 в версии DER-кодировки. Сертификат, предлагаемый сервером для согласованности с другим значением хеша. Это значение должно быть отформатировано как хеш в верхнем регистре.', 4, 'ecs', 10517);
INSERT INTO public.export_events_fields VALUES ('ECS.TLS.ServerJa3s', 8, 2, 'Хеш Ja3s TLS', 'Хеш, который идентифицирует серверы на основе того, как они выполняют SSL / TLS.', 4, 'ecs', 10508);
INSERT INTO public.export_events_fields VALUES ('ECS.Tracing.TraceID', 8, 2, 'ID трассировки', 'ID трассировки, группирует несколько событий, таких как происходящие транзакции, например, запрос пользователя обрабатывается несколькими взаимосвязанными сервисами.', 4, 'ecs', 10518);
INSERT INTO public.export_events_fields VALUES ('ECS.Tracing.TransactionID', 8, 2, 'ID транзакции трассировки', 'ID транзакции в рамках её трассировки. Транзакция это наивысший уровень в рамках работы сервиса, например, запрос к серверу.', 4, 'ecs', 10519);
INSERT INTO public.export_events_fields VALUES ('ECS.Tracing.SpanID', 8, 2, 'ID диапазона трассировки', 'ID диапазона в пределах его трассировки. Диапазон представляет собой операцию внутри транзакции. Пример: запрос в другую службу или запрос к базе данных.', 4, 'ecs', 10520);
INSERT INTO public.export_events_fields VALUES ('ECS.Network.ForwardedIP', 15, 7, 'IP проксируемого источника', 'IP узла, общение с которым происходит через прокси.', 4, 'ecs', 10354);
INSERT INTO public.export_events_fields VALUES ('ECS.URL.Original', 8, 2, 'Исходный URL', 'Неизмененный исходный URL источника события. При мониторинге сети наблюдаемый URL может быть полным URL, тогда как в журналах доступа URL-адрес часто представляется просто как путь. Это поле предназначено для представления URL-адреса в том виде,  в каком он был замечен, заполнен или нет.', 4, 'ecs', 10521);
INSERT INTO public.export_events_fields VALUES ('ECS.URL.Full', 8, 2, 'Полный URL', 'Если полные URL-адреса важны для вашего случая, следует хранить в "ECS.URL.Full", независимо от того, модифицировано ли это поле или присутствует в событии источника.', 4, 'ecs', 10522);
INSERT INTO public.export_events_fields VALUES ('ECS.URL.Scheme', 8, 2, 'Схема запроса', 'Схема запроса, например "https".Символ ":" не является частью схемы.', 4, 'ecs', 10523);
INSERT INTO public.export_events_fields VALUES ('ECS.URL.Domain', 8, 2, 'Домен URL', 'Домен URL, например www.npo-echelon.ru. В некоторых случаях URL-адрес может ссылаться на IP-адрес и / или порт напрямую, без доменного имени. В этом случае IP-адрес перейдет в поле домен. Если URL-адрес содержит буквальный адрес IPv6, заключенный в квадратные скобки [] (IETF RFC 2732), скобки [] также должны быть записаны в поле ECS.URL.Domain.', 4, 'ecs', 10524);
INSERT INTO public.export_events_fields VALUES ('ECS.URL.RegisteredDomain', 8, 2, 'Наивысший зарегистрированный домен URL', 'Наивысший зарегистрированный домен URL без поддомена. Например, для домена URL "foo.example.ru" значение зарегистрированного домена будет "example.ru".Алгоритм определения зарегистрированного домена использует список суффиксов из http://publicsuffix.org.', 4, 'ecs', 10525);
INSERT INTO public.export_events_fields VALUES ('ECS.URL.TopLevelDomain', 8, 2, 'eTLD URL', 'Домен верхнего уровня (eTLD) URL. Например, для домена назначения  "foo.example.ru" значение домена верхнего уровня будет "ru". Алгоритм определения зарегистрированного домена использует список суффиксов из https://publicsuffix.org.', 4, 'ecs', 10526);
INSERT INTO public.export_events_fields VALUES ('ECS.URL.Subdomain', 8, 2, 'Поддомен URL', 'Поддомен, например для "sub2.sub1.example.ru" таким доменом будет считаться "sub2.sub1".', 4, 'ecs', 10527);
INSERT INTO public.export_events_fields VALUES ('ECS.URL.Port', 5, 1, 'Порт запроса', 'Порт запроса, например 443.', 4, 'ecs', 10528);
INSERT INTO public.export_events_fields VALUES ('ECS.URL.Path', 8, 2, 'Путь запроса', 'Путь запроса, например, search.', 4, 'ecs', 10529);
INSERT INTO public.export_events_fields VALUES ('ECS.URL.Query', 8, 2, 'Поле запроса', 'Поле запроса описывает строку запроса, например   "q=incidents". Символ "?" исключается из строки запроса. Если URL-адрес не содержит символа "?" поле отсутствует. Если есть "?", но нет запроса,  то поле существует с пустой строкой. Для различения этих двух случаев можно  использовать запрос «exists».', 4, 'ecs', 10530);
INSERT INTO public.export_events_fields VALUES ('ECS.URL.Extension', 8, 2, 'Расширение файла в URL ', 'Поле содержит расширение файла из исходного URL-адреса запроса без точки. Расширение файла устанавливается только в том случае, если оно существует, поскольку не каждый URL файл содержит расширение. Например, значение должно быть «png», а не «.png». Обратите внимание: если имя файла имеет несколько расширений (example.tar.gz), только последнее должно быть захвачен ("gz", а не "tar.gz").', 4, 'ecs', 10531);
INSERT INTO public.export_events_fields VALUES ('ECS.URL.Fragment', 8, 2, 'Фрагмент URL', 'Часть URL-адреса после символа "#", например, "top". Знак "#" не является частью фрагмента.', 4, 'ecs', 10532);
INSERT INTO public.export_events_fields VALUES ('ECS.URL.Name', 8, 2, 'Имя пользователя запроса URL', 'Имя пользователя запроса URL.', 4, 'ecs', 10533);
INSERT INTO public.export_events_fields VALUES ('ECS.URL.Password', 8, 2, 'Пароль запроса URL', 'Пароль запроса URL.', 4, 'ecs', 10534);
INSERT INTO public.export_events_fields VALUES ('ECS.User.Name', 8, 2, 'Имя пользователя', 'Сокращённое имя пользователя или логин.', 4, 'ecs', 10536);
INSERT INTO public.export_events_fields VALUES ('ECS.User.FullName', 8, 2, 'Полное имя пользователя', 'Полное имя пользователя.', 4, 'ecs', 10537);
INSERT INTO public.export_events_fields VALUES ('ECS.User.Email', 8, 2, 'Почта пользователя', 'Почта пользователя.', 4, 'ecs', 10538);
INSERT INTO public.export_events_fields VALUES ('ECS.PE.PEHash', 8, 2, 'Хеш PE', 'Хеш заголовка PE и данных из одного или нескольких разделов PE.может использоваться для кластеризации файлов путем преобразования структурной информации о файле в хеш-значение.пример: "73ff189b63cd6be375a7ff25179a38d347651975"', 4, 'ecs', 10334);
INSERT INTO public.export_events_fields VALUES ('ECS.User.Hash', 8, 2, 'Хеш пользователя', 'Уникальный хеш пользователя для сопоставления информации о пользователе в анонимной форме. Полезно, если ECS.User.ID или ECS.User.Name содержат  конфиденциальную информацию и не могут быть использованы.', 4, 'ecs', 10539);
INSERT INTO public.export_events_fields VALUES ('ECS.User.Domain', 8, 2, 'Каталог пользователей', 'Имя каталога к которому принадлежит пользователь, например LDAP или Active Directory.', 4, 'ecs', 10540);
INSERT INTO public.export_events_fields VALUES ('ECS.User.Roles', 9, 2, 'Роли пользователя', 'Массив ролей пользователя на момент события.', 4, 'ecs', 10541);
INSERT INTO public.export_events_fields VALUES ('ECS.User.Risk.CalculatedScore', 6, 1, 'Балл риска пользователя', 'Балл классификации риска рассчитанный внутри SIEM. От 0 до 100. Шкала: неизвестный/unknown(0-20), низкий/low(20-40),умеренный/moderate(40-70), высокий/high(70-90), критический/critical(>90)Пример: 77.15', 4, 'ecs', 10542);
INSERT INTO public.export_events_fields VALUES ('ECS.Network.CommunityID', 8, 2, 'CommunityID', 'Хэш-сумма IP и портов узлов, участвовавших в соединении, подробнее на https://github.com/corelight/community-id-spec.', 4, 'ecs', 10355);
INSERT INTO public.export_events_fields VALUES ('ECS.User.Risk.CalculatedScoreNorm', 6, 1, 'Балл риска пользователя нормализованный', 'Нормализованный балл классификации риска рассчитанный внутри SIEM. От 0 до 100. Шкала: неизвестный/unknown(0-20), низкий/low(20-40),умеренный/moderate(40-70), высокий/high(70-90), критический/critical(>90)Пример: 77.15', 4, 'ecs', 10543);
INSERT INTO public.export_events_fields VALUES ('ECS.User.Risk.CalculatedLevel', 31, 15, 'Риск пользователя', 'Уровень классификации риска рассчитанный внутри SIEM. Возможные значения: неизвестный/unknown(0-20), низкий/low(20-40),умеренный/moderate(40-70), высокий/high(70-90), критический/critical(>90)Пример: high либо высокий', 4, 'ecs', 10544);
INSERT INTO public.export_events_fields VALUES ('ECS.User.Risk.StaticLevel', 31, 15, 'Риск пользователя извлечённый', 'Классификация уровня риска пользователя извлекаемая из события внешней системы, например СОВ. Возможные значения: неизвестный/unknown(0-20), низкий/low(20-40),умеренный/moderate(40-70), высокий/high(70-90), критический/critical(>90)Пример: high либо высокий', 4, 'ecs', 10545);
INSERT INTO public.export_events_fields VALUES ('ECS.User.Risk.StaticScore', 6, 1, 'Балл риска пользователя извлечённый', 'Нормализованный балл классификации риска рассчитанный внутри SIEM. От 0 до 100. Шкала: неизвестный/unknown(0-20), низкий/low(20-40),умеренный/moderate(40-70), высокий/high(70-90), критический/critical(>90)Пример: 77.15', 4, 'ecs', 10546);
INSERT INTO public.export_events_fields VALUES ('ECS.User.Risk.StaticScoreNorm', 6, 1, 'Балл риска пользователя извлечённый нормализованный', 'Нормализованный балл классификации риска рассчитанный внутри SIEM. От 0 до 100. Шкала: неизвестный/unknown(0-20), низкий/low(20-40),умеренный/moderate(40-70), высокий/high(70-90), критический/critical(>90)Пример: 77.15', 4, 'ecs', 10547);
INSERT INTO public.export_events_fields VALUES ('ECS.UserAgent.Original', 8, 2, 'Сырая строка user_agent', 'Не проанализированная строка user_agent.', 4, 'ecs', 10548);
INSERT INTO public.export_events_fields VALUES ('ECS.UserAgent.Name', 8, 2, 'Имя агента', 'Имя агента.', 4, 'ecs', 10549);
INSERT INTO public.export_events_fields VALUES ('ECS.UserAgent.Version', 8, 2, 'Версия агента', 'Версия агента.', 4, 'ecs', 10550);
INSERT INTO public.export_events_fields VALUES ('ECS.UserAgent.DeviceName', 8, 2, 'Имя устройства в user_agent', 'Имя устройства user_agent.', 4, 'ecs', 10551);
INSERT INTO public.export_events_fields VALUES ('ECS.VLAN.ID', 8, 2, 'VLAN ID', 'VLAN ID, сообщенный наблюдателем', 4, 'ecs', 10552);
INSERT INTO public.export_events_fields VALUES ('ECS.VLAN.Name', 8, 2, 'Имя VLAN', 'Необязательное имя VLAN, сообщенное наблюдателем.', 4, 'ecs', 10553);
INSERT INTO public.export_events_fields VALUES ('ECS.Vulnerability.Classification', 8, 2, 'Система классификации уязвимостей', 'Система классификации системы оценки уязвимостей. Например  https://www.first.org/cvss/ ', 4, 'ecs', 10554);
INSERT INTO public.export_events_fields VALUES ('ECS.Vulnerability.Enumeration', 8, 2, 'Тип идентификатора уязвимости', 'Тип идентификатора уязвимости. Например https://cve.mitre.org/about/ или https://osv.dev/list.', 4, 'ecs', 10555);
INSERT INTO public.export_events_fields VALUES ('ECS.Vulnerability.Reference', 8, 2, 'Ссылка об уязвимости', 'Ссылка на ресурс, предоставляющий дополнительную информацию, контекст и меры по устранению выявленной уязвимости.', 4, 'ecs', 10556);
INSERT INTO public.export_events_fields VALUES ('ECS.Vulnerability.ScoreBase', 6, 1, 'Оценка показателей уязвимости', 'Баллы могут варьироваться от 0,0 до 10,0, причем 10,0 - критическое значение. Базовые баллы включают оценку показателей уязвимости (атака вектор, сложность, привилегии и взаимодействие с пользователем), показатели воздействия (конфиденциальность, целостность и доступность) и объем, например, https://www.first.org/cvss/specification-document.', 4, 'ecs', 10557);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.SubjectOrganization', 8, 2, 'Список организаций', 'Список организаций (О) субъекта. Пример: "inc" ', 4, 'ecs', 10604);
INSERT INTO public.export_events_fields VALUES ('ECS.Log.Level', 22, 15, 'Уровень логирования', 'Уровень логирования, например, "warn", "err", "i", "informational"', 4, 'ecs', 10335);
INSERT INTO public.export_events_fields VALUES ('ECS.Vulnerability.ScoreTemporal', 6, 1, 'Временная оценка кода уязвимости', 'Баллы могут варьироваться от 0,0 до 10,0, причем 10,0 - критическое значение. Временные баллы включают оценку зрелости кода, уровень и уверенность, исправления. Пример: https://www.first.org/cvss/specification-document', 4, 'ecs', 10558);
INSERT INTO public.export_events_fields VALUES ('ECS.Vulnerability.ScoreEnvironmental', 6, 1, 'Оценка среды уязвимости', 'Оценки могут варьироваться от 0,0 до 10,0, причем критическое. Оценки окружающей среды включают оценку любых измененных базовых показателей, требования к конфиденциальности, целостности и доступности. Пример: (https://www.first.org/cvss/specification-document).', 4, 'ecs', 10559);
INSERT INTO public.export_events_fields VALUES ('ECS.Vulnerability.ScoreVersion', 8, 2, 'Оценка NVD', 'Национальная база данных уязвимостей США (NVD) проставляет рейтинги ''Низкий'', ''Средний'' и ''Высокий'' для базовых диапазонов оценок CVSS v2.0 в дополнение к рейтингам серьезности для CVSS v3.0, как они определены в спецификации CVSS v3.0. Пример: (https://nvd.nist.gov/vuln-metrics/cvss).', 4, 'ecs', 10560);
INSERT INTO public.export_events_fields VALUES ('ECS.Vulnerability.Category', 8, 2, 'Категория уязвимости', 'Тип системы или архитектуры, на которую влияет уязвимость. Эти может быть специфическим для платформы (например, Debian или SUSE) или общим (для  например, База данных или Брандмауэр). Например, https://qualysguard.qualys.com/qwebhelp/fo_portal/knowledgebase/vulnerability_categories.html Поле заполняется массивом.', 4, 'ecs', 10561);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceProcessId', 1, 1, 'ID процесса на источнике', 'Предоставляет идентификатор процесса на устройстве, генерирующем событие.', 2, 'syslog', 2019);
INSERT INTO public.export_events_fields VALUES ('ECS.Vulnerability.Description', 8, 2, 'Описание уязвимости', 'Описание уязвимости, дающее дополнительную информацию об уязвимости, например, https://cve.mitre.org/about/faqs.html#cve_entry_descriptions_created', 4, 'ecs', 10562);
INSERT INTO public.export_events_fields VALUES ('ECS.Vulnerability.ID', 8, 2, 'ID уязвимости', 'Числовая часть записи об уязвимости. Он включает уникальный идентификационный, номер уязвимости, например, https://cve.mitre.org/about/faqs.html#what_is_cve_id.', 4, 'ecs', 10563);
INSERT INTO public.export_events_fields VALUES ('ECS.Vulnerability.ScannerVendor', 8, 2, 'Производитель сканера уязвимостей', 'Название производителя сканера уязвимостей. Например, "Эшелон-Технологии".', 4, 'ecs', 10564);
INSERT INTO public.export_events_fields VALUES ('ECS.Vulnerability.Severity', 8, 2, 'Серьёзность уязвимости', 'Степень серьезности уязвимости, может помочь с метриками и внутренними приоритетами в отношении восстановления. Пример: https://nvd.nist.gov/vuln-metrics/cvss.', 4, 'ecs', 10565);
INSERT INTO public.export_events_fields VALUES ('ECS.Vulnerability.ReportID', 8, 2, 'ID отчёта сканирования уязвимостей', 'Идентификационный номер отчета или сканирования уязвимостей.', 4, 'ecs', 10566);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.Address', 8, 2, 'Адрес источника', 'Адресом источника может быть IP, доменное имя, Unix сокет. Сырой адрес необходимо заполнять всегда, извлечённые .IP и .Domain можно дублировать в соответствующих полях.', 4, 'ecs', 10567);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.IP', 15, 7, 'IP источника', 'IP адрес источника (IPv4 или IPv6).', 4, 'ecs', 10568);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.IP.CountryISOCode', 8, 2, 'Страна источника', 'Двухбуквенный код страны источника в стандарте ISO. Вычисляется с помощью баз GeoIP по полю ECS.Source.IP. Пример: ''RU'', ''AM'', ''US'', ''CN''.', 4, 'ecs', 10569);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.IP.City', 8, 2, 'Город источника', 'Город источника. Вычисляется с помощью баз GeoIP по полю ECS.Source.IP. Пример: ''Moscow'', ''Красноярск'', ''Montreal'', ''Hague''.', 4, 'ecs', 10570);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.IP.Location', 8, 2, 'Координаты источника', 'Широта и долгота источника. Вычисляется с помощью баз GeoIP по полю ECS.Source.IP. Пример: ''-73.614830,45.505918''.', 4, 'ecs', 10571);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.Port', 5, 1, 'Порт источника', 'Порт источника.', 4, 'ecs', 10572);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.MAC', 8, 10, 'MAC адрес источника', 'MAC адрес источника.', 4, 'ecs', 10573);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.Domain', 8, 2, 'Домен источника', 'Домен источника.', 4, 'ecs', 10574);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.RegisteredDomain', 8, 2, 'Зарегистрированный домен источника', 'Наивысший домен источника без поддомена.  Например, для домена источника "foo.example.com" значение зарегистрированного домена будет "example.com". Алгоритм определения зарегистрированного домена использует список суффиксов из https://publicsuffix.org', 4, 'ecs', 10575);
INSERT INTO public.export_events_fields VALUES ('ECS.Source.TopLevelDomain', 8, 2, 'eTLD источника', 'Домен верхнего уровня (eTLD) источника. Например, для домена источника  "foo.example.ru" значение домена верхнего уровня будет "ru". Алгоритм определения зарегистрированного домена использует список суффиксов из https://publicsuffix.org .', 4, 'ecs', 10576);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.SubjectCountry', 8, 2, 'Код страны субъекта', 'Код страны субъекта (C) ', 4, 'ecs', 10607);
INSERT INTO public.export_events_fields VALUES ('ECS.Log.FilePath', 8, 2, 'Путь файла', 'Полный путь к наблюдаемому файлу журнала, включая имя файла', 4, 'ecs', 10336);
INSERT INTO public.export_events_fields VALUES ('ECS.Log.Logger', 8, 2, 'Логгер', 'Полное наименование логгера приложения.', 4, 'ecs', 10337);
INSERT INTO public.export_events_fields VALUES ('ECS.Log.OriginFileName', 8, 2, 'Имя исходного файла', 'Имя файла, содержащего исходный код, из которого был создан журнал. Обратите внимание, что это поле не предназначено для записи файла журнала. Правильное поле для записи файла журнала - "ECS.Log.File.Path".', 4, 'ecs', 10338);
INSERT INTO public.export_events_fields VALUES ('ECS.Log.OriginFileLine', 1, 1, 'Исходный номер строки', 'Номер строки файла, содержащего исходный код события журнала.', 4, 'ecs', 10339);
INSERT INTO public.export_events_fields VALUES ('ECS.Log.OriginFunction', 8, 2, 'Имя функции', 'Имя функции или метода, вызвавшего событие журнала.', 4, 'ecs', 10340);
INSERT INTO public.export_events_fields VALUES ('ECS.Log.SyslogSeverityCode', 3, 1, 'Важность', 'Числовой уровень важности события журнала, если доступен. Если источник, публикующий события через Syslog, выводит отличные от RFC числовые значения важности (к примеру, межсетевой экран, IDS), необходимо производить маппинг на поле ECS.Event.Severity (event.severity).', 4, 'ecs', 10341);
INSERT INTO public.export_events_fields VALUES ('ECS.Log.SyslogFacilityCode', 8, 2, 'Код категории', 'Код категории события syslog Согласно RFC 5424 и 3164 значение facility code должно быть целым числом от 0 до 23.', 4, 'ecs', 10343);
INSERT INTO public.export_events_fields VALUES ('ECS.Network.Name', 8, 2, 'Имя сети', 'Имя, назначаемое секциям сети оператором', 4, 'ecs', 10347);
INSERT INTO public.export_events_fields VALUES ('ECS.Network.Direction', 21, 15, 'Направление трафика', 'Направление сетевого трафика. При нормализации в контексте мониторинга узла поле заполняется значениями egress (исходящий) или ingress (входящий). При нормализации событий сети или мониторинга периметра поле заполняется значениями "inbound", "outbound", "internal" или "external". "internal" трактуется как не пересекающий периметр трафик между устройствами, находящимися  внутри периметра."external" трактуется как трафик между двумя узлами находящимися вовне периметра, например, трафик вне VPN.', 4, 'ecs', 10353);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceOutboundInterface', 8, 2, 'Исходящий интерфейс', 'Интерфейс, на котором пакет или данные покинули устройство.', 2, 'syslog', 2020);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceZoneExternalID', 8, 2, 'DeviceZoneExternalID', '', 2, 'syslog', 2022);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceTranslatedAddress', 15, 7, 'DeviceTranslatedAddress', 'Определяет преобразованный адрес устройства, на который ссылается событие в IP-сети. Формат - IPv4-адрес. Пример: «192.168.10.1».', 2, 'syslog', 2023);
INSERT INTO public.export_events_fields VALUES ('CEFX.OldFilePermission', 8, 2, 'Разрешения файла', 'Разрешения старого файла.', 2, 'syslog', 2024);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomNumber1', 1, 1, 'Число cn1', 'CEF пользовательское поле для числа №1.', 2, 'syslog', 2032);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomNumber2', 1, 1, 'Число cn2', 'CEF пользовательское поле для числа №2.', 2, 'syslog', 2033);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomNumber3', 1, 1, 'Число cn3', 'CEF пользовательское поле для числа №3.', 2, 'syslog', 2034);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomNumber5', 1, 1, 'Число cn5', 'CEF пользовательское поле для числа №5.', 2, 'syslog', 2036);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomNumber6', 8, 2, 'Число cn6', 'CEF пользовательское поле для числа №6.', 2, 'syslog', 2037);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomString1', 8, 2, 'Строка cs1', 'CEF пользовательское поле для строки №1.', 2, 'syslog', 2041);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomString2', 8, 2, 'Строка cs2', 'CEF пользовательское поле для строки №2.', 2, 'syslog', 2042);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomString3', 8, 2, 'Строка cs3', 'CEF пользовательское поле для строки №3.', 2, 'syslog', 2043);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomString4', 8, 2, 'Строка cs4', 'CEF пользовательское поле для строки №4.', 2, 'syslog', 2044);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceCustomString9', 8, 2, 'Строка cs9', 'CEF пользовательское поле для строки 9.', 2, 'syslog', 2049);
INSERT INTO public.export_events_fields VALUES ('CEFX.AgentTranslatedZoneExternalID', 8, 2, 'AgentTranslatedZoneExternalID', '', 2, 'syslog', 2052);
INSERT INTO public.export_events_fields VALUES ('CEFX.OldFileId', 8, 2, 'ID файла', 'Идентификатор, связанный со старым файлом, может быть индексным дескриптором.', 2, 'syslog', 2053);
INSERT INTO public.export_events_fields VALUES ('CEFX.OldFileType', 8, 2, 'Тип файла', 'Тип старого файла (труба, розетка и т. Д.)', 2, 'syslog', 2054);
INSERT INTO public.export_events_fields VALUES ('CEFX.AgentNtDomain', 8, 2, 'AgentNtDomain', '', 2, 'syslog', 2055);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceTranslatedZoneURI', 8, 2, 'DeviceTranslatedZoneURI', 'URI переведенной зоны, которой был назначен актив устройства в.', 2, 'syslog', 2056);
INSERT INTO public.export_events_fields VALUES ('CEFX.FileHash', 8, 2, 'Хэш файла', 'Хеш файла.', 2, 'syslog', 2057);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceFacility', 8, 2, 'DeviceFacility', 'Объект, генерирующий это событие. Например, Syslog имеет явное средство, связанное с каждым событием.', 2, 'syslog', 2058);
INSERT INTO public.export_events_fields VALUES ('ECS.Network.Packets', 3, 1, 'Пакетов передано', 'Число пакетов, переданных на обоих направлениях. Является суммой ECS.Destination.Packets и ECS.Source.Packets если эти поля не пустые.', 4, 'ecs', 10357);
INSERT INTO public.export_events_fields VALUES ('ECS.Network.Inner', 23, 8, 'Сетевой мониторинг', 'Расширенные поля сетевого мониторинга, обычно заполняются из полей в событиях сенсоров Zeek, Wireshark и др.', 4, 'ecs', 10358);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.IO.Type', 8, 2, 'Тип ввода/вывода', 'Тип объекта из которого получен результат операции ввода/вывода. Возможные варианты: tty, file, socket.', 4, 'ecs', 10359);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.IO.Text', 8, 2, 'Текст ввода/вывода', 'Отрезок вывода операций ввода/вывода в формате UTF-8. Поле может содержать не все строки ввода/вывода, часто может попадать в последующие сообщения.', 4, 'ecs', 10360);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.IO.TotalBytesCaptured', 3, 1, 'Байт захвачено', 'Всего байт захвачено из операции ввода/вывода.', 4, 'ecs', 10361);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.IO.MaxBytesPerProcessExceeded', 13, 6, 'Превышение байт ввода/вывода', 'Означает что операция ввода/вывода произвела больше байт чем установлено в конфигурации.', 4, 'ecs', 10362);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.PID', 3, 1, 'PID', 'Идентификатор процесса', 4, 'ecs', 10365);
INSERT INTO public.export_events_fields VALUES ('CEF.Severity', 19, 1, 'Важность', 'Важность события в интервале от 0 до 10', 2, 'syslog', 2006);
INSERT INTO public.export_events_fields VALUES ('CEFX.Method', 8, 2, 'Метод', 'CEF метод.', 2, 'syslog', 2050);
INSERT INTO public.export_events_fields VALUES ('CEFX.DestinationNtDomain', 8, 2, 'Доменное имя Windows целевого адреса', 'Доменное имя Windows целевого адреса.', 2, 'syslog', 2060);
INSERT INTO public.export_events_fields VALUES ('CEFX.AgentTranslatedZoneURI', 8, 2, 'AgentTranslatedZoneURI', '', 2, 'syslog', 2062);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.Title', 8, 2, 'Заголовок процесса', 'Заголовок процесса иногда совпадает с именем процесса, но бывают и существенные отличия,  например, в браузер устанавливает заголовок на веб-страницу "в настоящее время открыта"', 4, 'ecs', 10373);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.ThreadID', 3, 1, 'ID потока процесса', 'Идентификатор потока процесса. пример: "4242"', 4, 'ecs', 10374);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.ThreadName', 8, 2, 'Имя потока', 'Имя потока процесса. пример "thread-0"', 4, 'ecs', 10375);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.Start', 11, 5, 'Время запуска процесса', 'Время запуска процесса.', 4, 'ecs', 10376);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.Uptime', 3, 1, 'Время работы процесса', 'Промежуток времени, когда был запущен процесс.', 4, 'ecs', 10377);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.WorkingDirectory', 8, 2, 'Каталог процесса', 'Рабочий каталог процесса.', 4, 'ecs', 10378);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.PublicKeySize', 3, 1, 'Размер ключа субъекта x509', 'Размер ключа субъекта в битах.', 4, 'ecs', 10609);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.ExitCode', 3, 1, 'Код выхода процесса', 'Код выхода процесса, если это событие терминала. Поле отсутствует у событий без выхода, например, запуск процесса.', 4, 'ecs', 10379);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.End', 11, 5, 'Окончание процесса', 'Время окончания процесса. например: "2016-05-23T08:05:34.853Z".', 4, 'ecs', 10380);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.TTY.Rows', 20, 1, 'Строк в терминале', 'Высота терминала в строках.', 4, 'ecs', 10381);
INSERT INTO public.export_events_fields VALUES ('ECS.Process.TTY.Columns', 20, 1, 'Столбцов в терминале', 'Количество столбцов символов в строке или ширина терминала.', 4, 'ecs', 10382);
INSERT INTO public.export_events_fields VALUES ('ECS.Registry.Hive', 8, 2, 'Корневая ветка реестра (куст)', 'Корневая ветка, в других трактовках куст либо улей, реестра это корень, верх иерархии реестра Windows. Например, HKEY_CLASSES_ROOT', 4, 'ecs', 10383);
INSERT INTO public.export_events_fields VALUES ('ECS.Registry.Key', 8, 2, 'Путь относительно корня реестра', 'Путь относительно корня реестра, то есть без префикс-блока HKEY_CLASSES_ROOT и подобных.', 4, 'ecs', 10384);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.IP', 15, 7, 'IP сервера', 'IP адрес сервера (IPv4 или IPv6).', 4, 'ecs', 10405);
INSERT INTO public.export_events_fields VALUES ('CEFX.OldFilePath', 8, 2, 'Путь к старому файлу', 'Полный путь к старому файлу, включая само имя файла. Примеры: c:\\Program Files\\WindowsNT\\Accessories\\wordpad.exe или /usr/bin/zip', 2, 'syslog', 2011);
INSERT INTO public.export_events_fields VALUES ('CEFX.RequestCookies', 8, 2, 'Куки запроса', 'Файлы cookie, связанные с запросом.', 2, 'syslog', 2012);
INSERT INTO public.export_events_fields VALUES ('CEFX.SourceTranslatedZoneURI', 8, 2, 'SourceTranslatedZoneURI', 'URI переведенной зоны, которой был назначен целевой ресурс.', 2, 'syslog', 2013);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceZoneURI', 8, 2, 'DeviceZoneURI', 'URI для Зоны, которой ресурс устройства был назначен в.', 2, 'syslog', 2014);
INSERT INTO public.export_events_fields VALUES ('CEFX.BaseEventCount', 1, 1, 'Количество', 'Подсчет, связанный с этим событием. Сколько раз наблюдалось одно и то же событие? Счетчик может быть не указан, если он равен 1.', 2, 'syslog', 2015);
INSERT INTO public.export_events_fields VALUES ('CEFX.SourceZoneURI', 8, 2, 'SourceZoneURI', 'URI для зоны, которой исходный актив был назначен.', 2, 'syslog', 2016);
INSERT INTO public.export_events_fields VALUES ('CEFX.SourceTranslatedZoneExternalID', 8, 2, 'SourceTranslatedZoneExternalID', '', 2, 'syslog', 2018);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceExternalId', 8, 2, 'DeviceExternalId', 'Имя, которое однозначно идентифицирует устройство, генерирующее это событие.', 2, 'syslog', 2061);
INSERT INTO public.export_events_fields VALUES ('CEFX.CategoryDeviceType', 8, 2, 'Catdt', '', 2, 'syslog', 2063);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceTranslatedZoneExternalID', 8, 2, 'DeviceTranslatedZoneExternalID', '', 2, 'syslog', 2064);
INSERT INTO public.export_events_fields VALUES ('CEFX.OldFileSize', 1, 1, 'Размер старого файла', 'Размер старого файла.', 2, 'syslog', 2065);
INSERT INTO public.export_events_fields VALUES ('CEFX.ExternalId', 8, 2, 'Внешний ID', 'Идентификатор, используемый исходным устройством. Обычно это возрастающие числа, связанные с событиями.', 2, 'syslog', 2066);
INSERT INTO public.export_events_fields VALUES ('CEFX.OldFileCreateTime', 11, 5, 'Время создания старого файла', 'Время создания старого файла.', 2, 'syslog', 2067);
INSERT INTO public.export_events_fields VALUES ('SQL.Engine', 8, 2, 'Движок БД', 'Программный продукт реализующий функцию базы данных. Например, PostgreSQL, SQLite.', 2, 'sql', 4005);
INSERT INTO public.export_events_fields VALUES ('SQL.EngineVersion', 8, 2, 'Версия БД', 'Версия программного продукта, реализующего функцию базы данных. Например, 11.1 для PostgreSQL, 3.40.1 для SQLite.', 2, 'sql', 4006);
INSERT INTO public.export_events_fields VALUES ('ECS.Server.IP.CountryISOCode', 8, 2, 'Страна сервера', 'Двухбуквенный код страны сервера в стандарте ISO. Вычисляется с помощью баз GeoIP по полю ECS.Destination.IP. Пример: ''RU'', ''AM'', ''US'', ''CN''.', 4, 'ecs', 10406);
INSERT INTO public.export_events_fields VALUES ('ECS.Hash.SHA256', 8, 3, 'SHA384 хеш', 'SHA384 хеш.', 4, 'ecs', 10215);
INSERT INTO public.export_events_fields VALUES ('CEFX.AgentTimeZone', 8, 2, 'Временная зона стороннего коннектора', 'Часовой пояс агента коннектора, обработавшего событие.', 2, 'syslog', 2025);
INSERT INTO public.export_events_fields VALUES ('CEFX.DeviceEventCategory', 8, 2, 'Категория', 'Представляет категорию, присвоенную исходным устройством. Устройства часто используют собственную схему категоризации для классификации событий. Пример: «/Monitor/Disk/Read».', 2, 'syslog', 2026);
INSERT INTO public.export_events_fields VALUES ('CEFX.Reason', 8, 2, 'Причина', 'Причина создания события аудита. Например, «неверный пароль» или «неизвестный пользователь». Это также может быть ошибка или код возврата. Пример: «0x1234»', 2, 'syslog', 2027);
INSERT INTO public.export_events_fields VALUES ('CEFX.DestinationTranslatedZoneURI', 8, 2, 'DestinationTranslatedZoneURI', 'URI переведенной зоны, которой был назначен целевой ресурс.', 2, 'syslog', 2028);
INSERT INTO public.export_events_fields VALUES ('CEFX.AgentZoneURI', 8, 2, 'AgentZoneURI', '', 2, 'syslog', 2029);
INSERT INTO public.export_events_fields VALUES ('CEFX.OldFileName', 8, 2, 'Имя файла', 'Имя старого файла.', 2, 'syslog', 2030);
INSERT INTO public.export_events_fields VALUES ('CEFX.SourceNtDomain', 8, 2, 'Sntdom', 'Доменное имя Windows для исходного адреса.', 2, 'syslog', 2031);
INSERT INTO public.export_events_fields VALUES ('CEFX.AgentTranslatedAddress', 15, 7, 'AgentTranslatedAddress', '', 2, 'syslog', 2051);
INSERT INTO public.export_events_fields VALUES ('ECS.User.ID', 8, 2, 'ID пользователя', 'ID пользователя.', 4, 'ecs', 10535);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.SubjectLocality', 8, 2, 'Населённые пункты субъекта', 'Название населённого пункта субъекта (L)', 4, 'ecs', 10605);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.SubjectStateOrProvince', 8, 2, 'Области и штаты субъекта', 'Список названий областей или штатов субъекта (ST, S, or P)', 4, 'ecs', 10606);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.PublicKeyAlgorithm', 8, 2, 'Алгоритм подписи субъекта x509', 'Алгоритм, используемый для генерации открытого ключа субъектом.', 4, 'ecs', 10608);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.PublicKeyExponent', 3, 1, 'Экспонента ключа x509', 'Экспонента, используется для получения открытого ключа. Присутствует не во всех алгоритмах.', 4, 'ecs', 10610);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.PublicKeyCurve', 8, 2, 'Эллиптическая кривая x509', 'Кривая, используемая алгоритмом открытого ключа. Присутствует не во всех алгоритмах.', 4, 'ecs', 10611);
INSERT INTO public.export_events_fields VALUES ('ECS.X509.AlternativeNames', 8, 2, 'SAN x509', 'Список альтернативных имен субъектов (SAN). Типы имен зависят от сертификата орган и тип сертификата, но обычно содержат IP-адреса, DNS имена (и подстановочные знаки) и адреса электронной почты.', 4, 'ecs', 10612);
INSERT INTO public.export_events_fields VALUES ('Fingerprint.Plugins', 8, 8, 'Плагины браузера', 'Список обнаруженных браузеров пользователя.', 1, 'internal', 1001);
INSERT INTO public.export_events_fields VALUES ('Fingerprint.HasFonts', 13, 6, 'Обнаружены шрифты', 'Обнаружены ли в браузере пользователя шрифты.', 1, 'internal', 1002);
INSERT INTO public.export_events_fields VALUES ('Fingerprint.HasLocalStorage', 13, 6, 'Имеется ли LocalStorage', 'Обнаружен ли в браузере LocalStorage.', 1, 'internal', 1003);
INSERT INTO public.export_events_fields VALUES ('Fingerprint.PDFViewerEnabled', 13, 6, 'Включён ли просмотр PDF', 'Включён ли в браузере просмотрщик PDF файлов.', 1, 'internal', 1004);
INSERT INTO public.export_events_fields VALUES ('Fingerprint.CanvasImage', 8, 12, 'Изображение из браузера', 'Извлечённое модулем fingerprint изображение из браузера.', 1, 'internal', 1005);
INSERT INTO public.export_events_fields VALUES ('Fingerprint.UserAgentData', 8, 8, 'Бренды браузера', 'Бренды браузера извлечённые модулем fingerprint.', 1, 'internal', 1006);
INSERT INTO public.export_events_fields VALUES ('Fingerprint.ScreenPrint', 8, 8, 'Информация об экране', 'Информация о разрешении экрана извлечённая модулем fingerprint.', 1, 'internal', 1007);
INSERT INTO public.export_events_fields VALUES ('Fingerprint.Fingerprint', 3, 1, 'Отпечаток браузера', 'Отпечаток рассчитывается по сумме различных показателей извлекаемых из браузера пользователя, системы пользователя модулем fingerprint. Используется для расширенной идентификации пользователей КОМРАД и подключенных систем.', 1, 'internal', 1008);
INSERT INTO public.export_events_fields VALUES ('Fingerprint.Vendor', 8, 2, 'Производитель браузера', 'Производитель браузера, извлекается модулем fingerprint.', 1, 'internal', 1009);
INSERT INTO public.export_events_fields VALUES ('Fingerprint.Fonts', 9, 17, 'Шрифты браузера', 'Список обнаруженных в браузере установленных шрифтов, извлекается модулем fingerprint.', 1, 'internal', 1010);
INSERT INTO public.export_events_fields VALUES ('Fingerprint.AvailableResolution', 8, 2, 'Доступное разрешение экрана', 'Доступное разрешение экрана в системе пользователя, извлекается модулем fingerprint.', 1, 'internal', 1011);
INSERT INTO public.export_events_fields VALUES ('Fingerprint.CurrentResolution', 8, 2, 'Разрешение экрана', 'Текущее разрешение экрана в системе пользователя, извлекается модулем fingerprint.', 1, 'internal', 1012);
INSERT INTO public.export_events_fields VALUES ('Fingerprint.TimeZone', 8, 2, 'Временная зона браузера', 'Временная зона браузера в системе пользователя, извлекается модулем fingerprint.', 1, 'internal', 1013);
INSERT INTO public.export_events_fields VALUES ('Fingerprint.EngineVersion', 8, 2, 'Движок браузера', 'Полная версия движка браузера пользователя, извлекается модулем fingerprint.', 1, 'internal', 1014);
INSERT INTO public.export_events_fields VALUES ('Fingerprint.CPU', 8, 2, 'Процессор', 'Процессор (CPU) на системе пользователя браузера, извлекается модулем fingerprint.', 1, 'internal', 1015);
INSERT INTO public.export_events_fields VALUES ('Blob.PCAP', 8, 13, 'PCAP', 'Записанный траффик в формате PCAP.', 2, 'internal', 1001);
INSERT INTO public.export_events_fields VALUES ('Blob.File', 8, 13, 'Прикреплённый файл', 'Прикреплённый к событию файл.', 2, 'internal', 1002);
INSERT INTO public.export_events_fields VALUES ('Blob.Image', 8, 12, 'Изображение', 'Прикреплённое к событию изображение.', 2, 'internal', 1003);
INSERT INTO public.export_events_fields VALUES ('Correlation.Related.Filters', 17, 19, 'ID фильтров', 'Список ID обнаруженных фильтров.', 1, 'internal', 1002);
INSERT INTO public.export_events_fields VALUES ('Correlation.Related.DocKeys', 9, 17, 'Ключи событий', 'Список ключей событий.', 1, 'internal', 1003);
INSERT INTO public.export_events_fields VALUES ('Sensor.ID', 8, 2, 'ID сенсора', 'Идентификатор сенсора.', 2, 'internal', 1001);


--
-- Data for Name: export_filters; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537562537472696e6743617365496e73656e73697469766528224543532e426173652e4d657373616765222c202244524f5022290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Рубикон.Срабатывание МЭ', 'Сработало правило межсетевого экрана', '5025105c-cd35-4746-896c-e9a6b42ff777', '{"ID":"o84s2so1d","ParentID":"","Condition":"and","Children":[{"ID":"kol4km6qy","ParentID":"o84s2so1d","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":"DROP","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4f627365727665722e56656e646f72222c202272756269636f6e22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537562537472696e6743617365496e73656e73697469766528224543532e426173652e4d657373616765222c2022636865636b696e6720636865636b73756d20d09ad0bed0bdd182d180d0bed0bbd18cd0bdd18bd0b520d181d183d0bcd0bcd18b204e4f54204f4b22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4f627365727665722e50726f64756374222c202263686b73756d22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Рубикон.Ошибка контрольные суммы', 'Неверные контрольные суммы', '5025105c-cd35-4746-896c-e9a6b42ff777', '{"ID":"11tad28eh","ParentID":"","Condition":"and","Children":[{"ID":"rx3g65dai","ParentID":"11tad28eh","Field":"ECS.Observer.Vendor","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"rubicon","SecondValue":"","Returns":null},{"ID":"1ihb544d3","ParentID":"11tad28eh","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":"checking checksum Контрольные суммы NOT OK","SecondValue":"","Returns":null},{"ID":"h7h8g9p3c","ParentID":"11tad28eh","Field":"ECS.Observer.Product","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"chksum","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224d657373616765222c20226175746822290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e6572767322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4f7574636f6d65222c20227375636365737322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e416374696f6e222c20226c6f67696e22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Успешный вход пользователя', 'Успешный вход пользователя в графический интерфейс Сканер-ВС 6', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"6mvhq4j8x","ParentID":"","Condition":"and","Children":[{"ID":"000cbxx1k","ParentID":"6mvhq4j8x","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"igtha2kv9","ParentID":"6mvhq4j8x","Field":"Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"auth","SecondValue":"","Returns":null},{"ID":"9i00285uk","ParentID":"6mvhq4j8x","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scannervs","SecondValue":"","Returns":null},{"ID":"q7rgf50vp","ParentID":"6mvhq4j8x","Field":"Event.Outcome","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"success","SecondValue":"","Returns":null},{"ID":"9b61pnscv","ParentID":"6mvhq4j8x","Field":"Event.Action","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"login","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e6728225375626a656374222c2022d092d0bdd0b8d0bcd0b0d0bdd0b8d0b521d09ed0b1d0bdd0b0d180d183d0b6d0b5d0bdd0b020d183d0b3d180d0bed0b7d0b020d0b1d0b5d0b7d0bed0bfd0b0d181d0bdd0bed181d182d0b82022290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Dr.Web 13 Esuite Server.Обнаружение вредоносного файла', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"zbj93pth6","ParentID":"","Condition":"and","Children":[{"ID":"9hjyvnbug","ParentID":"zbj93pth6","Field":"Subject","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Внимание!Обнаружена угроза безопасности ","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c202248546f6f6c22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c20224861636b746f6f6c22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c20224153502f4261636b646f6f7222290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c20224a53502f4261636b646f6f7222290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c20225048502f4261636b646f6f7222290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c20224261636b646f6f722e41535022290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c20224261636b646f6f722e4a535022290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c20224261636b646f6f722e50485022290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c20225765627368656c6c22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c2022506f72747363616e22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c20224d696d696b61747a22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c202257696e4372656422290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c2022506c75675822290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c20224b6f72706c756722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c2022507764756d7022290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c202243686f7070657222290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c2022576d694578656322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c2022587363616e22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c2022436c6561726c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e672822526177222c20224153505853707922290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Обнаружение важных антивирусных событий', 'Обнаруживает флаги важных антивирусных событий', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"7m88y82n5","ParentID":"","Condition":"and","Children":[{"ID":"8j2pa90p8","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"HTool","SecondValue":"","Returns":null},{"ID":"xpcirobpi","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Hacktool","SecondValue":"","Returns":null},{"ID":"tzgxshfh8","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"ASP/Backdoor","SecondValue":"","Returns":null},{"ID":"2evvbmha3","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"JSP/Backdoor","SecondValue":"","Returns":null},{"ID":"qrq6ln4gs","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"PHP/Backdoor","SecondValue":"","Returns":null},{"ID":"3ex8ocgs5","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Backdoor.ASP","SecondValue":"","Returns":null},{"ID":"tickte96b","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Backdoor.JSP","SecondValue":"","Returns":null},{"ID":"q8b7bu8d8","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Backdoor.PHP","SecondValue":"","Returns":null},{"ID":"nryc0nxla","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Webshell","SecondValue":"","Returns":null},{"ID":"vslngmonl","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Portscan","SecondValue":"","Returns":null},{"ID":"ghb3lpvfh","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Mimikatz","SecondValue":"","Returns":null},{"ID":"nlb7kgxmr","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"WinCred","SecondValue":"","Returns":null},{"ID":"y4ntpbru1","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"PlugX","SecondValue":"","Returns":null},{"ID":"rwi5kistw","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Korplug","SecondValue":"","Returns":null},{"ID":"ooho43ey3","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Pwdump","SecondValue":"","Returns":null},{"ID":"oyw1xk58o","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Chopper","SecondValue":"","Returns":null},{"ID":"cwlm00p7t","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"WmiExec","SecondValue":"","Returns":null},{"ID":"pveiz84zb","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Xscan","SecondValue":"","Returns":null},{"ID":"0hcmvdskq","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Clearlog","SecondValue":"","Returns":null},{"ID":"nj1hl7gj4","ParentID":"7m88y82n5","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"ASPXSpy","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4f7574636f6d65222c20227375636365737322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e6572767322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e416374696f6e222c20226c6f676f757422290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224d657373616765222c20226175746822290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Выход пользователя из графического интерфейса', 'Выход пользователя из графического интерфейса Сканер-ВС 6', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"aj7y7ate5","ParentID":"","Condition":"and","Children":[{"ID":"98ay0t4bw","ParentID":"aj7y7ate5","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"cxyk62ylk","ParentID":"aj7y7ate5","Field":"Event.Outcome","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"success","SecondValue":"","Returns":null},{"ID":"r4hg4m7qk","ParentID":"aj7y7ate5","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scannervs","SecondValue":"","Returns":null},{"ID":"nfj1nm8na","ParentID":"aj7y7ate5","Field":"Event.Action","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"logout","SecondValue":"","Returns":null},{"ID":"v1hklyl9e","ParentID":"aj7y7ate5","Field":"Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"auth","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e6572767322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4f7574636f6d65222c20226661696c75726522290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224d657373616765222c20226175746822290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e416374696f6e222c20226c6f67696e22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Ошибка авторизации в графический интерфейс', 'Ошибка авторизации пользователя в графический интерфейс Сканер-ВС 6', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"kl5z0g36b","ParentID":"","Condition":"and","Children":[{"ID":"rtlnm1w2m","ParentID":"kl5z0g36b","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scannervs","SecondValue":"","Returns":null},{"ID":"znc4dxzz3","ParentID":"kl5z0g36b","Field":"Event.Outcome","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"failure","SecondValue":"","Returns":null},{"ID":"t27lva9d5","ParentID":"kl5z0g36b","Field":"Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"auth","SecondValue":"","Returns":null},{"ID":"nzjf6h6zq","ParentID":"kl5z0g36b","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"4xmypnqkr","ParentID":"kl5z0g36b","Field":"Event.Action","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"login","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6743617365496e73656e7369746976652822436f6c6c6563746f7254797065222c2022736e6d7022290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.SNMP.Все события', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"nyggwcone","ParentID":"","Condition":"and","Children":[{"ID":"b2e4e9dk5","ParentID":"nyggwcone","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal_fold","FirstValue":"snmp","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e6572767322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224d657373616765222c20227363616e6e65722076756c6e65726162696c69747922290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206e6f74206576656e743a6c7561456d707479282256756c6e65726162696c6974792e536576657269747922290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Найдены уязвимости', 'На хосте найдены уязвимости', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"y2okre0mg","ParentID":"","Condition":"and","Children":[{"ID":"rudezs2tl","ParentID":"y2okre0mg","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"gj38gz19c","ParentID":"y2okre0mg","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scannervs","SecondValue":"","Returns":null},{"ID":"w6555mtm1","ParentID":"y2okre0mg","Field":"Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scanner vulnerability","SecondValue":"","Returns":null},{"ID":"d4a6u4d3z","ParentID":"y2okre0mg","Field":"Vulnerability.Severity","RenderType":"text","ValueType":"string","Operator":"is_not_null","FirstValue":"","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e65722d767322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224d657373616765222c20227363616e6e657220696e76656e746f727922290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4f7574636f6d65222c20227375636365737322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6c7561456d70747928225363616e6e65722e5061636b616765732e436f756e7422290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Ошибка инвентаризации актива', 'Ошибка инвентаризации актива (хост недоступен, закрыт порт, неверные данные учётной записи)', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"dute2o0ee","ParentID":"","Condition":"and","Children":[{"ID":"0js0e8k2x","ParentID":"dute2o0ee","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"vrhnb95en","ParentID":"dute2o0ee","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scanner-vs","SecondValue":"","Returns":null},{"ID":"tvy2zg5hj","ParentID":"dute2o0ee","Field":"Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scanner inventory","SecondValue":"","Returns":null},{"ID":"4zsftl9i4","ParentID":"dute2o0ee","Field":"Event.Outcome","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"success","SecondValue":"","Returns":null},{"ID":"o44z1yiu1","ParentID":"dute2o0ee","Field":"Scanner.Packages.Count","RenderType":"number","ValueType":"int64","Operator":"is_null","FirstValue":"0","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c202273716c22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e6728224465736372697074696f6e222c2022d094d0b5d0b9d181d182d0b2d0b8d0b520d0b7d0b0d0b1d0bbd0bed0bad0b8d180d0bed0b2d0b0d0bdd0be20d181d0b0d0bcd0bed0b7d0b0d189d0b8d182d0bed0b922290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.KSC.Срабатывание самозащиты', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"hpz0xpfpi","ParentID":"","Condition":"and","Children":[{"ID":"uhsatrn8o","ParentID":"hpz0xpfpi","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"sql","SecondValue":"","Returns":null},{"ID":"bra3910bk","ParentID":"hpz0xpfpi","Field":"Description","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Действие заблокировано самозащитой","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e6728224543532e426173652e4d657373616765222c202264656c65746520757365722022290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e6728224543532e4576656e742e50726f7669646572222c20227573657264656c22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Linux.Удаление пользователя', 'Пользователь был удалён', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"0sead1at5","ParentID":"","Condition":"and","Children":[{"ID":"z8lnaacgr","ParentID":"0sead1at5","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"delete user ","SecondValue":"","Returns":null},{"ID":"ttx9wshh5","ParentID":"0sead1at5","Field":"ECS.Event.Provider","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"userdel","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224d657373616765222c20227363616e6e65722076756c6e65726162696c69747922290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e6572767322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e67282256756c6e65726162696c6974792e5365766572697479222c20226869676822290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Найдены уязвимости с высокой критичностью', 'Найдены уязвимости с высоким уровнем критичности', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"y9ra8twod","ParentID":"","Condition":"and","Children":[{"ID":"ihymv9q8n","ParentID":"y9ra8twod","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"yumnu4siy","ParentID":"y9ra8twod","Field":"Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scanner vulnerability","SecondValue":"","Returns":null},{"ID":"onozc6r6w","ParentID":"y9ra8twod","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scannervs","SecondValue":"","Returns":null},{"ID":"idoy6p2vg","ParentID":"y9ra8twod","Field":"Vulnerability.Severity","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"high","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e6572767322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224d657373616765222c20227363616e6e65722076756c6e65726162696c69747922290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e67282256756c6e65726162696c6974792e5365766572697479222c20226d656469756d22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Найдены уязвимости со средней критичностью', 'Найдены уязвимости со средним уровнем критичности', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"y9ra8twod","ParentID":"","Condition":"and","Children":[{"ID":"t1zb70k70","ParentID":"y9ra8twod","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"fzvk559wq","ParentID":"y9ra8twod","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scannervs","SecondValue":"","Returns":null},{"ID":"nb90rz9tj","ParentID":"y9ra8twod","Field":"Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scanner vulnerability","SecondValue":"","Returns":null},{"ID":"5mvgqrsqv","ParentID":"y9ra8twod","Field":"Vulnerability.Severity","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"medium","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e6572767322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e416374696f6e222c202270617373776f7264206368616e676522290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4f7574636f6d65222c20226661696c75726522290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224d657373616765222c20226175746822290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Не удалось изменить пароль пользователю', 'Не удалось изменить пароль пользователю (слишком слабый пароль)', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"vmmvnt1da","ParentID":"","Condition":"and","Children":[{"ID":"b593f3ajg","ParentID":"vmmvnt1da","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"fl6d4sw9k","ParentID":"vmmvnt1da","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scannervs","SecondValue":"","Returns":null},{"ID":"0ngjbj335","ParentID":"vmmvnt1da","Field":"Event.Action","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"password change","SecondValue":"","Returns":null},{"ID":"t2dxgn1vd","ParentID":"vmmvnt1da","Field":"Event.Outcome","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"failure","SecondValue":"","Returns":null},{"ID":"q9pnv340x","ParentID":"vmmvnt1da","Field":"Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"auth","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4f7574636f6d65222c20226661696c75726522290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e416374696f6e222c20227573657220726567697374726174696f6e22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224d657373616765222c20226175746822290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e6572767322290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Не удалось создать нового пользователя', 'Не удалось создать нового пользователя (такой логин уже существует, выбран слабый пароль)', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"7hw3kqc2s","ParentID":"","Condition":"and","Children":[{"ID":"ih3ej36fv","ParentID":"7hw3kqc2s","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"14io7zj6a","ParentID":"7hw3kqc2s","Field":"Event.Outcome","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"failure","SecondValue":"","Returns":null},{"ID":"gtugkvnso","ParentID":"7hw3kqc2s","Field":"Event.Action","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"user registration","SecondValue":"","Returns":null},{"ID":"pzgfc728h","ParentID":"7hw3kqc2s","Field":"Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"auth","SecondValue":"","Returns":null},{"ID":"vj4a2lyry","ParentID":"7hw3kqc2s","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scannervs","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734e756d62657228224f7065726174696f6e222c203130313030290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734e756d6265722822537461747573222c2031290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Dr.Web 13 Esuite Server.Вход в графический интерфейс', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"zbj93pth6","ParentID":"","Condition":"and","Children":[{"ID":"leb82qsn1","ParentID":"zbj93pth6","Field":"Operation","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"10100","SecondValue":"","Returns":null},{"ID":"f2xcheyvz","ParentID":"zbj93pth6","Field":"Status","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"1","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224d657373616765222c20226175746822290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e416374696f6e222c20227573657220726567697374726174696f6e22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e6572767322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4f7574636f6d65222c20227375636365737322290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Создан новый пользователь', 'Добавлен новый пользователь для авторизации в графический интерфейс Сканер-ВС 6', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"vmmvnt1da","ParentID":"","Condition":"and","Children":[{"ID":"8sgk2yksl","ParentID":"vmmvnt1da","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"7jj6uaw7w","ParentID":"vmmvnt1da","Field":"Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"auth","SecondValue":"","Returns":null},{"ID":"ire8cszme","ParentID":"vmmvnt1da","Field":"Event.Action","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"user registration","SecondValue":"","Returns":null},{"ID":"vegd3rmtp","ParentID":"vmmvnt1da","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scannervs","SecondValue":"","Returns":null},{"ID":"l4p6p1wg4","ParentID":"vmmvnt1da","Field":"Event.Outcome","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"success","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224345462e44657669636550726f64756374222c202249445322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224345462e44657669636556656e646f72222c202272756269636f6e22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206e6f74206576656e743a6e6f74686173537562537472696e6743617365496e73656e73697469766528224345462e4576656e744e616d65222c20224944533a2073797374656d206d65737361676522290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Рубикон.СОВ.Срабатывание СОВ', 'Обнаружена атака', '5025105c-cd35-4746-896c-e9a6b42ff777', '{"ID":"9o9xml1lw","ParentID":"","Condition":"and","Children":[{"ID":"sidmg7cdy","ParentID":"9o9xml1lw","Field":"CEF.DeviceProduct","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"IDS","SecondValue":"","Returns":null},{"ID":"h129l1ijg","ParentID":"9o9xml1lw","Field":"CEF.DeviceVendor","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"rubicon","SecondValue":"","Returns":null},{"ID":"zps0kkpv3","ParentID":"9o9xml1lw","Field":"CEF.EventName","RenderType":"text","ValueType":"string","Operator":"not_contains_ignore_case","FirstValue":"IDS: system message","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224d657373616765222c20227363616e6e65722076756c6e65726162696c69747922290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e6572767322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e67282256756c6e65726162696c6974792e5365766572697479222c2022637269746963616c22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Найдены критические уязвимости', 'На хосте найдены уязвимости с самым высоким уровнем критичности', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"y9ra8twod","ParentID":"","Condition":"and","Children":[{"ID":"4k03jn3a6","ParentID":"y9ra8twod","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"5biy31tsl","ParentID":"y9ra8twod","Field":"Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scanner vulnerability","SecondValue":"","Returns":null},{"ID":"bgo5h8721","ParentID":"y9ra8twod","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scannervs","SecondValue":"","Returns":null},{"ID":"ggx6w3wl1","ParentID":"y9ra8twod","Field":"Vulnerability.Severity","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"critical","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224d657373616765222c20227363616e6e65722076756c6e65726162696c69747922290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e6572767322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e67282256756c6e65726162696c6974792e5365766572697479222c20226c6f7722290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Найдены уязвимости с низкой критичностью', 'Найдены уязвимости с низким уровнем критичности', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"y9ra8twod","ParentID":"","Condition":"and","Children":[{"ID":"gloxu32vy","ParentID":"y9ra8twod","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"733p1k3hg","ParentID":"y9ra8twod","Field":"Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scanner vulnerability","SecondValue":"","Returns":null},{"ID":"ozek9zabk","ParentID":"y9ra8twod","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scannervs","SecondValue":"","Returns":null},{"ID":"fybnalvhz","ParentID":"y9ra8twod","Field":"Vulnerability.Severity","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"low","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e426173652e4d657373616765222c2022d09ad180d0b8d182d0b8d187d0b5d181d0bad0b820d0bcd0b0d0bbd0be20d0bcd0b5d181d182d0b020d0bdd0b020d0b6d191d181d182d0bad0bed0bc20d0b4d0b8d181d0bad0b522290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4f627365727665722e50726f64756374222c202266696c6573797374656d22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4f627365727665722e56656e646f72222c202272756269636f6e22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Рубикон.Критически мало места на жёстком диске', 'Недостаточно свободного места', '5025105c-cd35-4746-896c-e9a6b42ff777', '{"ID":"n1ia8kzdn","ParentID":"","Condition":"and","Children":[{"ID":"zjhtlutmf","ParentID":"n1ia8kzdn","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"Критически мало места на жёстком диске","SecondValue":"","Returns":null},{"ID":"0v030y3h5","ParentID":"n1ia8kzdn","Field":"ECS.Observer.Product","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"filesystem","SecondValue":"","Returns":null},{"ID":"xxpxfkima","ParentID":"n1ia8kzdn","Field":"ECS.Observer.Vendor","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"rubicon","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206c6f63616c206f6b5f32203d2066616c73650a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a686173537562537472696e6743617365496e73656e73697469766528224543532e426173652e4d657373616765222c2022454e41424c455f504f52545343414e203d206f666622290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a686173537562537472696e6743617365496e73656e73697469766528224543532e426173652e4d657373616765222c2022454e41424c455f504f52545343414e203d206f6e22290a2020202020202020656e640a20202020202020206f6b5f31203d206f6b5f3120616e64206f6b5f320a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4576656e742e50726f7669646572222c2022617070636f6e66696722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e486f73742e486f73746e616d65222c202272756269636f6e22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Рубикон.Запуск/остановка СОВ обнаружения сканирования', 'Настройка обнаружения сканирования', '5025105c-cd35-4746-896c-e9a6b42ff777', '{"ID":"04sh7or5v","ParentID":"","Condition":"and","Children":[{"ID":"72umsf3e0","ParentID":"04sh7or5v","Field":"ECS.Event.Provider","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"appconfig","SecondValue":"","Returns":null},{"ID":"44s2951uj","ParentID":"04sh7or5v","Field":"ECS.Host.Hostname","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"rubicon","SecondValue":"","Returns":null},{"ID":"iqnnm5wrr","ParentID":"04sh7or5v","Condition":"or","Children":[{"ID":"jd9auqbxq","ParentID":"iqnnm5wrr","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":"ENABLE_PORTSCAN = off","SecondValue":"","Returns":null},{"ID":"udbiwp30p","ParentID":"iqnnm5wrr","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":"ENABLE_PORTSCAN = on","SecondValue":"","Returns":null}]}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537562537472696e6743617365496e73656e73697469766528224543532e426173652e4d657373616765222c202232303022290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4f627365727665722e50726f64756374222c202268747470642d61636365737322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4f627365727665722e56656e646f72222c202272756269636f6e22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537562537472696e6743617365496e73656e73697469766528224543532e426173652e4d657373616765222c20226367692d62696e2f696e6465782e63676922290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Рубикон.Вход пользователя в веб-интерфейс', 'Пользователь успешно авторизовался', '5025105c-cd35-4746-896c-e9a6b42ff777', '{"ID":"a4c9jld9r","ParentID":"","Condition":"and","Children":[{"ID":"wseqrtuyf","ParentID":"a4c9jld9r","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":"200","SecondValue":"","Returns":null},{"ID":"ynk46pk51","ParentID":"a4c9jld9r","Field":"ECS.Observer.Product","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"httpd-access","SecondValue":"","Returns":null},{"ID":"mkmjsed36","ParentID":"a4c9jld9r","Field":"ECS.Observer.Vendor","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"rubicon","SecondValue":"","Returns":null},{"ID":"0cqgkqtna","ParentID":"a4c9jld9r","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":"cgi-bin/index.cgi","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537562537472696e6743617365496e73656e7369746976652822526177222c202270616d5f756e6978286c6f67696e3a73657373696f6e293a2073657373696f6e206f70656e656422290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4f627365727665722e50726f64756374222c20226c6f67696e22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4f627365727665722e56656e646f72222c202272756269636f6e22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Рубикон.Вход пользователя в терминале', 'Пользователь успешно авторизовался', '5025105c-cd35-4746-896c-e9a6b42ff777', '{"ID":"ju427ns4h","ParentID":"","Condition":"and","Children":[{"ID":"eqf4gt23b","ParentID":"ju427ns4h","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":"pam_unix(login:session): session opened","SecondValue":"","Returns":null},{"ID":"h3k949zle","ParentID":"ju427ns4h","Field":"ECS.Observer.Product","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"login","SecondValue":"","Returns":null},{"ID":"1gj307r0v","ParentID":"ju427ns4h","Field":"ECS.Observer.Vendor","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"rubicon","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6743617365496e73656e7369746976652822436f6c6c6563746f7254797065222c202278666c6f7722290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.xFlow.Все события', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"nyggwcone","ParentID":"","Condition":"and","Children":[{"ID":"4k4obf44x","ParentID":"nyggwcone","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal_fold","FirstValue":"xflow","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537562537472696e6743617365496e73656e73697469766528224543532e426173652e4d657373616765222c2022d0a1d09ed09220d0bdd0b520d0b7d0b0d0bfd183d189d0b5d0bdd0b020d0b4d0bbd18f20d0b8d0bdd182d0b5d180d184d0b5d0b9d181d0b022290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e486f73742e486f73746e616d65222c202272756269636f6e22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Рубикон.СОВ не запущена', 'СОВ не запущена для интерфейса', '5025105c-cd35-4746-896c-e9a6b42ff777', '{"ID":"tcmfggwe2","ParentID":"","Condition":"and","Children":[{"ID":"3b7hkatyl","ParentID":"tcmfggwe2","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":"СОВ не запущена для интерфейса","SecondValue":"","Returns":null},{"ID":"25jmmajss","ParentID":"tcmfggwe2","Field":"ECS.Host.Hostname","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"rubicon","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224345462e44657669636556656e646f72222c202272756269636f6e22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e426173652e4d657373616765222c20225c2270616d5f756e6978286c6f67696e3a61757468293a2061757468656e7469636174696f6e206661696c7572653b22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Рубикон.Ошибка входа пользователя в терминале', 'Ошибка аутентификации', '5025105c-cd35-4746-896c-e9a6b42ff777', '{"ID":"kezw2pl0l","ParentID":"","Condition":"and","Children":[{"ID":"qn76s69sf","ParentID":"kezw2pl0l","Field":"CEF.DeviceVendor","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"rubicon","SecondValue":"","Returns":null},{"ID":"1e6jw9tqh","ParentID":"kezw2pl0l","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"\\"pam_unix(login:auth): authentication failure;","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4576656e742e50726f7669646572222c20227573657261646422290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e6728224543532e426173652e4d657373616765222c20226e6577207573657222290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Linux.Создание нового пользователя', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"cxkfgduu8","ParentID":"","Condition":"and","Children":[{"ID":"v01r9xt53","ParentID":"cxkfgduu8","Field":"ECS.Event.Provider","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"useradd","SecondValue":"","Returns":null},{"ID":"tmr0ccp1p","ParentID":"cxkfgduu8","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"new user","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206c6f63616c206f6b5f32203d2066616c73650a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373431290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373238290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373332290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373536290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373230290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373235290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373430290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373233290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373234290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373236290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373232290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373230290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373231290a2020202020202020656e640a20202020202020206f6b5f31203d206f6b5f3120616e64206f6b5f320a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822574d492e4368616e6e656c222c2022536563757269747922290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Windows.Обнаружение всех операций с учётными записями пользователей', 'Обнаружение всех операций с учётными записями пользователей Windows', '56f1c962-b512-4946-833d-5f226c84b6ea', '{"ID":"xmhy2q5ua","ParentID":"","Condition":"and","Children":[{"ID":"vhsgqm12b","ParentID":"xmhy2q5ua","Field":"WMI.Channel","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"Security","SecondValue":"","Returns":null},{"ID":"ottm7j93k","ParentID":"xmhy2q5ua","Condition":"or","Children":[{"ID":"kfkg76bhd","ParentID":"ottm7j93k","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4741","SecondValue":"","Returns":null},{"ID":"2d34m1gvx","ParentID":"ottm7j93k","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4728","SecondValue":"","Returns":null},{"ID":"asbt6uw10","ParentID":"ottm7j93k","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4732","SecondValue":"","Returns":null},{"ID":"577vculnv","ParentID":"ottm7j93k","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4756","SecondValue":"","Returns":null},{"ID":"iq7ew39xa","ParentID":"ottm7j93k","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4720","SecondValue":"","Returns":null},{"ID":"dx1ej9w0r","ParentID":"ottm7j93k","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4725","SecondValue":"","Returns":null},{"ID":"9c408dsjv","ParentID":"ottm7j93k","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4740","SecondValue":"","Returns":null},{"ID":"ady7w9o5z","ParentID":"ottm7j93k","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4723","SecondValue":"","Returns":null},{"ID":"tvt2igj24","ParentID":"ottm7j93k","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4724","SecondValue":"","Returns":null},{"ID":"hjbx0e8gu","ParentID":"ottm7j93k","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4726","SecondValue":"","Returns":null},{"ID":"7m5mgr79n","ParentID":"ottm7j93k","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4722","SecondValue":"","Returns":null},{"ID":"cdwglnqiq","ParentID":"ottm7j93k","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4720","SecondValue":"","Returns":null},{"ID":"tib15itpx","ParentID":"ottm7j93k","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4721","SecondValue":"","Returns":null}]}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206c6f63616c206f6b5f32203d2066616c73650a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373635290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373636290a2020202020202020656e640a20202020202020206f6b5f31203d206f6b5f3120616e64206f6b5f320a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822574d492e4368616e6e656c222c2022536563757269747922290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Windows.Использование истории SID', 'Обнаруживает возможное использование истории SID', '56f1c962-b512-4946-833d-5f226c84b6ea', '{"ID":"tmt7heoyp","ParentID":"","Condition":"and","Children":[{"ID":"wsy91th9h","ParentID":"tmt7heoyp","Field":"WMI.Channel","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"Security","SecondValue":"","Returns":null},{"ID":"y2aqbj1bj","ParentID":"tmt7heoyp","Condition":"or","Children":[{"ID":"yfygo1ouf","ParentID":"y2aqbj1bj","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4765","SecondValue":"","Returns":null},{"ID":"oekpde8su","ParentID":"y2aqbj1bj","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4766","SecondValue":"","Returns":null}]}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c202273716c22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e6728224465736372697074696f6e222c2022d09ed0b1d0bdd0b0d180d183d0b6d0b5d0bd22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.KSC.Срабатывание защиты', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"hpz0xpfpi","ParentID":"","Condition":"and","Children":[{"ID":"03nsh3n7s","ParentID":"hpz0xpfpi","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"sql","SecondValue":"","Returns":null},{"ID":"ioiez0jey","ParentID":"hpz0xpfpi","Field":"Description","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Обнаружен","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d2066616c73650a202020202d2d206f720a20202020646f0a20202020202020206c6f63616c206f6b5f32203d20747275650a20202020202020202d2d20616e640a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f3220616e6420206576656e743a686173537472696e6728224543532e4576656e742e50726f7669646572222c20224d6963726f736f66742d57696e646f77732d4e6574776f726b50726f66696c6522290a2020202020202020656e640a20202020202020206f6b5f31203d206f6b5f31206f72206f6b5f320a20202020656e640a202020202d2d206f720a20202020646f0a20202020202020206f6b5f31203d206f6b5f31206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c203130303030290a20202020656e640a202020202d2d206f720a20202020646f0a20202020202020206f6b5f31203d206f6b5f31206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c203130303031290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Windows.Подключение и отключение сети', '', '39f1576f-6a5d-419e-b2f3-55a44bf3db77', '{"ID":"cypogmt34","ParentID":"","Condition":"or","Children":[{"ID":"yb9k7xm3j","ParentID":"cypogmt34","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"10000","SecondValue":"","Returns":null},{"ID":"jgkcpbvc7","ParentID":"cypogmt34","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"10001","SecondValue":"","Returns":null},{"ID":"x0qqpnsf8","ParentID":"cypogmt34","Condition":"and","Children":[{"ID":"opppfp9sa","ParentID":"x0qqpnsf8","Field":"ECS.Event.Provider","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"Microsoft-Windows-NetworkProfile","SecondValue":"","Returns":null}]}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034363838290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Windows.Запуск нового процесса', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"zbj93pth6","ParentID":"","Condition":"and","Children":[{"ID":"27sg41xb9","ParentID":"zbj93pth6","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4688","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373332290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Windows.Обнаружение передачи пользователю прав локального администратора', 'Обнаруживает события о пользователях, которые добавляются в локальную группу администраторов', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"xmhy2q5ua","ParentID":"","Condition":"and","Children":[{"ID":"gwl2uheuk","ParentID":"xmhy2q5ua","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4732","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c20363030290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Windows.Активность Windows PowerShell', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"xmhy2q5ua","ParentID":"","Condition":"and","Children":[{"ID":"aok8thkxo","ParentID":"xmhy2q5ua","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"600","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206c6f63616c206f6b5f32203d20747275650a20202020202020202d2d20616e640a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f3220616e64206e6f74206576656e743a6e6f74686173537562537472696e6728224465736372697074696f6e222c20226b6173706572736b792e636f6d3a383022290a2020202020202020656e640a20202020202020202d2d20616e640a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f3220616e64206e6f74206576656e743a6e6f74686173537562537472696e6728224465736372697074696f6e222c20226b6173706572736b792e636f6d2f22290a2020202020202020656e640a20202020202020202d2d20616e640a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f3220616e64206e6f74206576656e743a6e6f74686173537562537472696e6728224465736372697074696f6e222c20226b6173706572736b792d6c6162732e636f6d22290a2020202020202020656e640a20202020202020206f6b5f31203d206f6b5f3120616e64206f6b5f320a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c202273716c22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e6728224465736372697074696f6e222c2022d092d18bd0b1d180d0b0d0bd20d0b8d181d182d0bed187d0bdd0b8d0ba20d0bed0b1d0bdd0bed0b2d0bbd0b5d0bdd0b8d0b920d0b1d0b0d0b722290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.KSC.Сторонний источник баз САВЗ', 'Выбран нетипичный источник баз', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"hpz0xpfpi","ParentID":"","Condition":"and","Children":[{"ID":"gy2xolhe0","ParentID":"hpz0xpfpi","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"sql","SecondValue":"","Returns":null},{"ID":"98yovx2gm","ParentID":"hpz0xpfpi","Field":"Description","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Выбран источник обновлений баз","SecondValue":"","Returns":null},{"ID":"7ukwujjbv","ParentID":"hpz0xpfpi","Condition":"and","Children":[{"ID":"nyxth3q7a","ParentID":"7ukwujjbv","Field":"Description","RenderType":"text","ValueType":"string","Operator":"not_contains","FirstValue":"kaspersky.com:80","SecondValue":"","Returns":null},{"ID":"9quf86asa","ParentID":"7ukwujjbv","Field":"Description","RenderType":"text","ValueType":"string","Operator":"not_contains","FirstValue":"kaspersky.com/","SecondValue":"","Returns":null},{"ID":"pqayhjkyu","ParentID":"7ukwujjbv","Field":"Description","RenderType":"text","ValueType":"string","Operator":"not_contains","FirstValue":"kaspersky-labs.com","SecondValue":"","Returns":null}]}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6743617365496e73656e7369746976652822436f6c6c6563746f7254797065222c202273716c22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.SQL.Все события', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"nyggwcone","ParentID":"","Condition":"and","Children":[{"ID":"rmbzr45i8","ParentID":"nyggwcone","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal_fold","FirstValue":"sql","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537562537472696e6743617365496e73656e73697469766528224543532e426173652e4d657373616765222c20222070617373776f7264206368616e67656420666f7220726f6f7422290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4576656e742e50726f7669646572222c202270617373776422290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Linux.Пароль для root был изменён', '', '39f1576f-6a5d-419e-b2f3-55a44bf3db77', '{"ID":"yq4l9ws0c","ParentID":"","Condition":"and","Children":[{"ID":"xr4ubre0v","ParentID":"yq4l9ws0c","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":" password changed for root","SecondValue":"","Returns":null},{"ID":"z2sagrw1z","ParentID":"yq4l9ws0c","Field":"ECS.Event.Provider","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"passwd","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206c6f63616c206f6b5f32203d2066616c73650a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f72206576656e743a686173537562537472696e6728224465736372697074696f6e222c2022d0a1d0b5d182d0b5d0b2d0b0d18f20d0bed188d0b8d0b1d0bad0b020d0bed0b1d0bdd0bed0b2d0bbd0b5d0bdd0b8d18f22290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f72206576656e743a686173537562537472696e6728224465736372697074696f6e222c2022d09dd0b520d0bdd0b0d0b9d0b4d0b5d0bd20d0b8d181d182d0bed187d0bdd0b8d0ba20d0bed0b1d0bdd0bed0b2d0bbd0b5d0bdd0b8d0b920d0b1d0b0d0b722290a2020202020202020656e640a20202020202020206f6b5f31203d206f6b5f3120616e64206f6b5f320a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c202273716c22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.KSC.Сбой обновления', 'Сбой обновления САВ', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"hpz0xpfpi","ParentID":"","Condition":"and","Children":[{"ID":"vha4wzsjy","ParentID":"hpz0xpfpi","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"sql","SecondValue":"","Returns":null},{"ID":"8pzp3y6d4","ParentID":"hpz0xpfpi","Condition":"or","Children":[{"ID":"j68cm4z0v","ParentID":"8pzp3y6d4","Field":"Description","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Сетевая ошибка обновления","SecondValue":"","Returns":null},{"ID":"irw3imjj0","ParentID":"8pzp3y6d4","Field":"Description","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Не найден источник обновлений баз","SecondValue":"","Returns":null}]}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224345462e44657669636550726f64756374222c202245505022290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e486f73742e486f73746e616d65222c20224550502d53657276657222290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822434546582e4465766963654576656e7443617465676f7279222c202253797374656d416374697669747922290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.VipNet EPP.Системная активность', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"zbj93pth6","ParentID":"","Condition":"and","Children":[{"ID":"ntrhlgn2v","ParentID":"zbj93pth6","Field":"CEF.DeviceProduct","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"EPP","SecondValue":"","Returns":null},{"ID":"u9ooh2jy8","ParentID":"zbj93pth6","Field":"ECS.Host.Hostname","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"EPP-Server","SecondValue":"","Returns":null},{"ID":"s3qz0f6iu","ParentID":"zbj93pth6","Field":"CEFX.DeviceEventCategory","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"SystemActivity","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d2066616c73650a202020202d2d206f720a20202020646f0a20202020202020206c6f63616c206f6b5f32203d20747275650a20202020202020202d2d20616e640a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f3220616e6420206576656e743a686173537562537472696e6743617365496e73656e73697469766528224543532e426173652e4d657373616765222c202272656d6f76656420627922290a2020202020202020656e640a20202020202020202d2d20616e640a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f3220616e6420206576656e743a686173537472696e6728224543532e4576656e742e50726f7669646572222c20226770617373776422290a2020202020202020656e640a20202020202020206f6b5f31203d206f6b5f31206f72206f6b5f320a20202020656e640a202020202d2d206f720a20202020646f0a20202020202020206c6f63616c206f6b5f32203d20747275650a20202020202020202d2d20616e640a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f3220616e6420206576656e743a686173537562537472696e6743617365496e73656e73697469766528224543532e426173652e4d657373616765222c202264656c65746522290a2020202020202020656e640a20202020202020202d2d20616e640a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f3220616e6420206576656e743a686173537472696e6728224543532e4576656e742e50726f7669646572222c2022757365726d6f6422290a2020202020202020656e640a20202020202020206f6b5f31203d206f6b5f31206f72206f6b5f320a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Linux.Пользователь удалён из группы', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"895sqwc93","ParentID":"","Condition":"or","Children":[{"ID":"cu51iq2kt","ParentID":"895sqwc93","Condition":"and","Children":[{"ID":"fbrrbe5da","ParentID":"cu51iq2kt","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":"removed by","SecondValue":"","Returns":null},{"ID":"358daomfa","ParentID":"cu51iq2kt","Field":"ECS.Event.Provider","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"gpasswd","SecondValue":"","Returns":null}]},{"ID":"kz1tdqehu","ParentID":"895sqwc93","Condition":"and","Children":[{"ID":"bwzj9ssmo","ParentID":"kz1tdqehu","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":"delete","SecondValue":"","Returns":null},{"ID":"9dw2ytb5u","ParentID":"kz1tdqehu","Field":"ECS.Event.Provider","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"usermod","SecondValue":"","Returns":null}]}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6743617365496e73656e7369746976652822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Syslog.Все события', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"nyggwcone","ParentID":"","Condition":"and","Children":[{"ID":"73vkl2lm4","ParentID":"nyggwcone","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal_fold","FirstValue":"syslog","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224345462e44657669636550726f64756374222c2022687722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e486f73742e486f73746e616d65222c2022687722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224345462e4465766963654576656e74436c6173734944222c2022343222290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.VipNet HW.Изменился IP-aдрес сетевого узла', 'Номер события 42', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"zbj93pth6","ParentID":"","Condition":"and","Children":[{"ID":"1y59h1m08","ParentID":"zbj93pth6","Field":"CEF.DeviceProduct","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"hw","SecondValue":"","Returns":null},{"ID":"v9r6mcvf5","ParentID":"zbj93pth6","Field":"ECS.Host.Hostname","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"hw","SecondValue":"","Returns":null},{"ID":"m7uehm8zd","ParentID":"zbj93pth6","Field":"CEF.DeviceEventClassID","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"42","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6743617365496e73656e7369746976652822436f6c6c6563746f7254797065222c2022696e7465726e616c22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Internal.Все события', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"nyggwcone","ParentID":"","Condition":"and","Children":[{"ID":"quqnk826r","ParentID":"nyggwcone","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal_fold","FirstValue":"internal","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734e756d62657228224f7065726174696f6e222c203130313031290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734e756d6265722822537461747573222c2031290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Dr.Web 13 Esuite Server.Выход из графического интерфейса', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"zbj93pth6","ParentID":"","Condition":"and","Children":[{"ID":"2dr5hfdnh","ParentID":"zbj93pth6","Field":"Operation","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"10101","SecondValue":"","Returns":null},{"ID":"3yijl3etv","ParentID":"zbj93pth6","Field":"Status","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"1","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6743617365496e73656e7369746976652822436f6c6c6563746f7254797065222c202266696c6522290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.File.Все события', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"nyggwcone","ParentID":"","Condition":"and","Children":[{"ID":"9gg92cdmw","ParentID":"nyggwcone","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal_fold","FirstValue":"file","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e6728224543532e426173652e4d657373616765222c20222f69707461626c6573202d4622290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Linux.Очистка правил в iptables', 'Правила были очищены', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"vl9w3ds8a","ParentID":"","Condition":"and","Children":[{"ID":"5etdgqg6n","ParentID":"vl9w3ds8a","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"/iptables -F","SecondValue":"","Returns":null},{"ID":"wnhtl9iih","ParentID":"vl9w3ds8a","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206c6f63616c206f6b5f32203d2066616c73650a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a686173537562537472696e6743617365496e73656e73697469766528224543532e426173652e4d657373616765222c2022746f20736861646f772067726f757022290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a686173537562537472696e6743617365496e73656e73697469766528224543532e426173652e4d657373616765222c2022746f2067726f757022290a2020202020202020656e640a20202020202020206f6b5f31203d206f6b5f3120616e64206f6b5f320a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4576656e742e50726f7669646572222c2022757365726d6f6422290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Linux.Пользователь добавлен в группу', '', '9948d246-8a77-483d-92cd-045e8c1ceb0c', '{"ID":"l2mrlre9h","ParentID":"","Condition":"and","Children":[{"ID":"zmetk096k","ParentID":"l2mrlre9h","Field":"ECS.Event.Provider","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"usermod","SecondValue":"","Returns":null},{"ID":"9nihklddq","ParentID":"l2mrlre9h","Condition":"or","Children":[{"ID":"wlzefc2bg","ParentID":"9nihklddq","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":"to shadow group","SecondValue":"","Returns":null},{"ID":"mhtf3031m","ParentID":"9nihklddq","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":"to group","SecondValue":"","Returns":null}]}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d2066616c73650a202020202d2d206f720a20202020646f0a20202020202020206f6b5f31203d206f6b5f31206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034393436290a20202020656e640a202020202d2d206f720a20202020646f0a20202020202020206f6b5f31203d206f6b5f31206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034393437290a20202020656e640a202020202d2d206f720a20202020646f0a20202020202020206f6b5f31203d206f6b5f31206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034393438290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Windows.Изменение конфигурации межсетевого экрана', '', '39f1576f-6a5d-419e-b2f3-55a44bf3db77', '{"ID":"tmt7heoyp","ParentID":"","Condition":"or","Children":[{"ID":"ub237yal3","ParentID":"tmt7heoyp","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4946","SecondValue":"","Returns":null},{"ID":"7i2f0oqs0","ParentID":"tmt7heoyp","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4947","SecondValue":"","Returns":null},{"ID":"w5zj314xo","ParentID":"tmt7heoyp","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4948","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6743617365496e73656e7369746976652822436f6c6c6563746f7254797065222c2022776d6922290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Windows.Все события', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"nyggwcone","ParentID":"","Condition":"and","Children":[{"ID":"dqsdj5gjc","ParentID":"nyggwcone","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal_fold","FirstValue":"wmi","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6743617365496e73656e7369746976652822436f6c6c6563746f7254797065222c20226874747022290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.HTTP.Все события', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"nyggwcone","ParentID":"","Condition":"and","Children":[{"ID":"3fytvhmhk","ParentID":"nyggwcone","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal_fold","FirstValue":"http","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206c6f63616c206f6b5f32203d2066616c73650a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2031313032290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c20313034290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f7220206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c20353132290a2020202020202020656e640a20202020202020206f6b5f31203d206f6b5f3120616e64206f6b5f320a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4576656e742e416374696f6e222c202261756469742d6c6f672d636c656172656422290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734576656e74416e794f7574636f6d657328342920202d2d2069732063617465676f72697a65642062792074797065733a202273756363657373220a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Windows.Очистка журналов', 'Очистка журнала безопасности и системы ', '39f1576f-6a5d-419e-b2f3-55a44bf3db77', '{"ID":"s5ed1bsoz","ParentID":"","Condition":"and","Children":[{"ID":"0b35mfnig","ParentID":"s5ed1bsoz","Field":"ECS.Event.Action","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"audit-log-cleared","SecondValue":"","Returns":null},{"ID":"fpinfbtw2","ParentID":"s5ed1bsoz","Field":"ECS.Event.Outcome","RenderType":"enum","ValueType":"event_outcomes","Operator":"contains_enum_any","FirstValue":"success","SecondValue":"","Returns":null},{"ID":"ij39cekt6","ParentID":"s5ed1bsoz","Condition":"or","Children":[{"ID":"4pkqshut3","ParentID":"ij39cekt6","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"1102","SecondValue":"","Returns":null},{"ID":"khdnx35ks","ParentID":"ij39cekt6","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"104","SecondValue":"","Returns":null},{"ID":"cl29i8o1o","ParentID":"ij39cekt6","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"512","SecondValue":"","Returns":null}]}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822574d492e4368616e6e656c222c2022536563757269747922290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373230290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734576656e74416e794f7574636f6d657328342920202d2d2069732063617465676f72697a65642062792074797065733a202273756363657373220a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Windows.Создание нового пользователя', 'Была создана учетная запись пользователя', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"tmt7heoyp","ParentID":"","Condition":"and","Children":[{"ID":"2s3wbaq49","ParentID":"tmt7heoyp","Field":"WMI.Channel","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"Security","SecondValue":"","Returns":null},{"ID":"sbt4uiw4i","ParentID":"tmt7heoyp","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4720","SecondValue":"","Returns":null},{"ID":"la2fh5up2","ParentID":"tmt7heoyp","Field":"ECS.Event.Outcome","RenderType":"enum","ValueType":"event_outcomes","Operator":"contains_enum_any","FirstValue":"success","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e6728224543532e426173652e4d657373616765222c202273657373696f6e206f70656e656422290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4576656e742e50726f7669646572222c20227373686422290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Linux.SSH подключение', '', '39f1576f-6a5d-419e-b2f3-55a44bf3db77', '{"ID":"kyj8z0lvb","ParentID":"","Condition":"and","Children":[{"ID":"zfg1fx5v1","ParentID":"kyj8z0lvb","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"session opened","SecondValue":"","Returns":null},{"ID":"03wibkavg","ParentID":"kyj8z0lvb","Field":"ECS.Event.Provider","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"sshd","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d2066616c73650a202020202d2d206f720a20202020646f0a20202020202020206f6b5f31203d206f6b5f31206f7220206576656e743a686173537562537472696e6743617365496e73656e7369746976652822526177222c202270616d5f756e6978287375646f3a61757468293a2061757468656e7469636174696f6e206661696c75726522290a20202020656e640a202020202d2d206f720a20202020646f0a20202020202020206f6b5f31203d206f6b5f31206f7220206576656e743a686173537562537472696e6743617365496e73656e7369746976652822526177222c20223320696e636f72726563742070617373776f726420617474656d70747322290a20202020656e640a202020202d2d206f720a20202020646f0a20202020202020206f6b5f31203d206f6b5f31206f7220206576656e743a686173537562537472696e6743617365496e73656e7369746976652822526177222c202270616d5f756e69782873753a61757468293a2061757468656e7469636174696f6e206661696c75726522290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Linux.Ошибка аутентификации при попытке входа от учётной записи администратора', '', '39f1576f-6a5d-419e-b2f3-55a44bf3db77', '{"ID":"cxkfgduu8","ParentID":"","Condition":"or","Children":[{"ID":"63nrqeznz","ParentID":"cxkfgduu8","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":"pam_unix(sudo:auth): authentication failure","SecondValue":"","Returns":null},{"ID":"tlguzsx16","ParentID":"cxkfgduu8","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":"3 incorrect password attempts","SecondValue":"","Returns":null},{"ID":"exnqyjo40","ParentID":"cxkfgduu8","Field":"Raw","RenderType":"text","ValueType":"string","Operator":"contains_ignore_case","FirstValue":"pam_unix(su:auth): authentication failure","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206c6f63616c206f6b5f32203d2066616c73650a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f72206e6f74206576656e743a6e6f74686173537562537472696e6728224543532e426173652e4d657373616765222c20227375646f22290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f72206e6f74206576656e743a6e6f74686173537562537472696e6728224543532e426173652e4d657373616765222c2022737522290a2020202020202020656e640a20202020202020206f6b5f31203d206f6b5f3120616e64206f6b5f320a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206576656e743a686173537562537472696e6728224543532e426173652e4d657373616765222c202261757468656e7469636174696f6e206661696c75726522290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Linux.Неправильный ввод пароля', '', '39f1576f-6a5d-419e-b2f3-55a44bf3db77', '{"ID":"cxkfgduu8","ParentID":"","Condition":"and","Children":[{"ID":"f5762g662","ParentID":"cxkfgduu8","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"authentication failure","SecondValue":"","Returns":null},{"ID":"eto9pre8v","ParentID":"cxkfgduu8","Condition":"or","Children":[{"ID":"10icw44wf","ParentID":"eto9pre8v","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"not_contains","FirstValue":"sudo","SecondValue":"","Returns":null},{"ID":"sdbcavzut","ParentID":"eto9pre8v","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"not_contains","FirstValue":"su","SecondValue":"","Returns":null}]}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373139290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4576656e742e416374696f6e222c20226368616e6765642d61756469742d636f6e66696722290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Windows.Политика аудита системы была изменена.', '', '39f1576f-6a5d-419e-b2f3-55a44bf3db77', '{"ID":"wrtnz0xgv","ParentID":"","Condition":"and","Children":[{"ID":"oc37pwraw","ParentID":"wrtnz0xgv","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4719","SecondValue":"","Returns":null},{"ID":"tun727mln","ParentID":"wrtnz0xgv","Field":"ECS.Event.Action","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"changed-audit-config","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e426173652e4d657373616765222c2022d0a1d0bed181d182d0bed18fd0bdd0b8d0b52057696e646f777320446566656e64657220d183d181d0bfd0b5d188d0bdd0be20d0b8d0b7d0bcd0b5d0bdd0b5d0bdd0be20d0bdd0b02053454355524954595f50524f445543545f53544154455f534e4f4f5a45442e22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Windows.Антивирусная защита была отключена', '', '39f1576f-6a5d-419e-b2f3-55a44bf3db77', '{"ID":"bx6cmwnx3","ParentID":"","Condition":"and","Children":[{"ID":"ihjras966","ParentID":"bx6cmwnx3","Field":"ECS.Base.Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"Состояние Windows Defender успешно изменено на SECURITY_PRODUCT_STATE_SNOOZED.","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034363235290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4576656e742e50726f7669646572222c20224d6963726f736f66742d57696e646f77732d53656375726974792d4175646974696e6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4576656e742e416374696f6e222c20226c6f676f6e2d6661696c656422290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Windows.Неуспешная попытка входа в систему', '', '39f1576f-6a5d-419e-b2f3-55a44bf3db77', '{"ID":"eyo7kz81y","ParentID":"","Condition":"and","Children":[{"ID":"mt3ne7j0m","ParentID":"eyo7kz81y","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4625","SecondValue":"","Returns":null},{"ID":"zg6wu713i","ParentID":"eyo7kz81y","Field":"ECS.Event.Provider","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"Microsoft-Windows-Security-Auditing","SecondValue":"","Returns":null},{"ID":"dptbe8rcn","ParentID":"eyo7kz81y","Field":"ECS.Event.Action","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"logon-failed","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4576656e742e416374696f6e222c202264656c657465642d757365722d6163636f756e7422290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734e756d62657228224543532e4576656e742e436f6465222c2034373236290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734576656e74416e795479706573283235382920202d2d2069732063617465676f72697a65642062792074797065733a2022757365722c64656c6574696f6e220a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Windows.Удаление пользователя', 'Учетная запись пользователя была удалена', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"unjqs6hxt","ParentID":"","Condition":"and","Children":[{"ID":"hs09h02md","ParentID":"unjqs6hxt","Field":"ECS.Event.Action","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"deleted-user-account","SecondValue":"","Returns":null},{"ID":"rp7ckrpz2","ParentID":"unjqs6hxt","Field":"ECS.Event.Code","RenderType":"number","ValueType":"uint32","Operator":"equal","FirstValue":"4726","SecondValue":"","Returns":null},{"ID":"2863qg9em","ParentID":"unjqs6hxt","Field":"ECS.Event.Type","RenderType":"enum","ValueType":"event_types","Operator":"contains_enum_any","FirstValue":"user,deletion","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822574d492e4368616e6e656c222c20224170706c69636174696f6e22290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4576656e742e50726f7669646572222c2022437962657270726f74656374204261636b757020616e64205265636f7665727922290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224543532e4576656e742e4d6f64756c65222c2022776d6922290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206e6f74206576656e743a6c7561456d7074792822574d492e446174612e4b3122290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Cyberprotect Backup and Recovery', 'Киберпротект Кибэр Бэкап.
События относятся к плану резервного копирования и к событиям, которые происходят при выполнении плана резервного копирования.', 'e59cd5aa-aa73-4427-8d11-81d4305e2582', '{"ID":"n3ytbepfl","ParentID":"","Condition":"and","Children":[{"ID":"gei3vfgex","ParentID":"n3ytbepfl","Field":"WMI.Channel","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"Application","SecondValue":"","Returns":null},{"ID":"ycuax69bt","ParentID":"n3ytbepfl","Field":"ECS.Event.Provider","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"Cyberprotect Backup and Recovery","SecondValue":"","Returns":null},{"ID":"15vkmm4pc","ParentID":"n3ytbepfl","Field":"ECS.Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"wmi","SecondValue":"","Returns":null},{"ID":"2xbd0jgj9","ParentID":"n3ytbepfl","Field":"WMI.Data.K1","RenderType":"text","ValueType":"string","Operator":"is_not_null","FirstValue":"","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206c6f63616c206f6b5f32203d2066616c73650a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f72206576656e743a686173537562537472696e6728224465736372697074696f6e222c2022d091d0b0d0b7d18b20d183d181d182d0b0d180d0b5d0bbd0b822290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f72206576656e743a686173537562537472696e6728224465736372697074696f6e222c2022d091d0b0d0b7d18b20d181d0b8d0bbd18cd0bdd0be20d183d181d182d0b0d180d0b5d0bbd0b82022290a2020202020202020656e640a20202020202020202d2d206f720a2020202020202020646f0a2020202020202020202020206f6b5f32203d206f6b5f32206f72206576656e743a686173537562537472696e6728224465736372697074696f6e222c2022d094d0b0d0b2d0bdd0be20d0bdd0b520d0bed0b1d0bdd0bed0b2d0bbd18fd0bbd0b8d181d18c20d0b1d0b0d0b7d18b20d0bfd180d0bed0b3d180d0b0d0bcd0bcd18b22290a2020202020202020656e640a20202020202020206f6b5f31203d206f6b5f3120616e64206f6b5f320a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c202273716c22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.KSC.Устарели базы данных САВЗ', '', '56f1c962-b512-4946-833d-5f226c84b6ea', '{"ID":"hpz0xpfpi","ParentID":"","Condition":"and","Children":[{"ID":"sgxxshae1","ParentID":"hpz0xpfpi","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"sql","SecondValue":"","Returns":null},{"ID":"qy6cjcskx","ParentID":"hpz0xpfpi","Condition":"or","Children":[{"ID":"xvs9gkr7p","ParentID":"qy6cjcskx","Field":"Description","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Базы устарели","SecondValue":"","Returns":null},{"ID":"6f6w9fsli","ParentID":"qy6cjcskx","Field":"Description","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Базы сильно устарели ","SecondValue":"","Returns":null},{"ID":"2b3ec2298","ParentID":"qy6cjcskx","Field":"Description","RenderType":"text","ValueType":"string","Operator":"contains","FirstValue":"Давно не обновлялись базы программы","SecondValue":"","Returns":null}]}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734576656e74416e7943617465676f7269657328322920202d2d2069732063617465676f72697a65642062792074797065733a202261757468656e7469636174696f6e220a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a6861734576656e74416e794f7574636f6d657328322920202d2d2069732063617465676f72697a65642062792074797065733a20226661696c757265220a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c2022696e7465726e616c22290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Internal.Неуспешная попытка входа в КОМРАД', '', 'ee29e3c0-80c7-4684-8ffb-0272f613afde', '{"ID":"36mj52z77","ParentID":"","Condition":"and","Children":[{"ID":"pf9zhqpqz","ParentID":"36mj52z77","Field":"ECS.Event.Category","RenderType":"enum","ValueType":"event_categories","Operator":"contains_enum_any","FirstValue":"authentication","SecondValue":"","Returns":null},{"ID":"qh13bd9tx","ParentID":"36mj52z77","Field":"ECS.Event.Outcome","RenderType":"enum","ValueType":"event_outcomes","Operator":"contains_enum_any","FirstValue":"failure","SecondValue":"","Returns":null},{"ID":"zw0trs7cb","ParentID":"36mj52z77","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"internal","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224d657373616765222c2022617373657422290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e416374696f6e222c202263726561746520617373657422290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4f7574636f6d65222c20227375636365737322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e6572767322290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Добавлен новый актив', 'Был добавлен новый актив в Сканер-ВС 6', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"msbljz77y","ParentID":"","Condition":"and","Children":[{"ID":"h9d4jkedu","ParentID":"msbljz77y","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"w367dqkl5","ParentID":"msbljz77y","Field":"Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"asset","SecondValue":"","Returns":null},{"ID":"blq65v017","ParentID":"msbljz77y","Field":"Event.Action","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"create asset","SecondValue":"","Returns":null},{"ID":"3exdf7mva","ParentID":"msbljz77y","Field":"Event.Outcome","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"success","SecondValue":"","Returns":null},{"ID":"4go6iwlsx","ParentID":"msbljz77y","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scannervs","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224d657373616765222c20226175746822290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e6572767322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e416374696f6e222c202270617373776f7264206368616e676522290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4f7574636f6d65222c20227375636365737322290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Пароль пользователя успешно изменён', 'Пароль пользователя Сканер-ВС 6 успешно изменён', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"vmmvnt1da","ParentID":"","Condition":"and","Children":[{"ID":"eqzmgcb5w","ParentID":"vmmvnt1da","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"xgz5l51t1","ParentID":"vmmvnt1da","Field":"Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"auth","SecondValue":"","Returns":null},{"ID":"nsuoblo2c","ParentID":"vmmvnt1da","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scannervs","SecondValue":"","Returns":null},{"ID":"gs4capxkx","ParentID":"vmmvnt1da","Field":"Event.Action","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"password change","SecondValue":"","Returns":null},{"ID":"q7hu7nhi8","ParentID":"vmmvnt1da","Field":"Event.Outcome","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"success","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4f7574636f6d65222c20227375636365737322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224d657373616765222c20227363616e6e657220696e76656e746f727922290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e65722d767322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e64206e6f74206576656e743a6c7561456d70747928225363616e6e65722e5061636b616765732e436f756e7422290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Инвентаризация актива успешно завершена', 'Инвентаризация актива успешно завершена', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"dute2o0ee","ParentID":"","Condition":"and","Children":[{"ID":"viq3a0vul","ParentID":"dute2o0ee","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"lwb3olqiy","ParentID":"dute2o0ee","Field":"Event.Outcome","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"success","SecondValue":"","Returns":null},{"ID":"m4xaguhue","ParentID":"dute2o0ee","Field":"Message","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scanner inventory","SecondValue":"","Returns":null},{"ID":"2wqkigtk6","ParentID":"dute2o0ee","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scanner-vs","SecondValue":"","Returns":null},{"ID":"e2i4nle47","ParentID":"dute2o0ee","Field":"Scanner.Packages.Count","RenderType":"number","ValueType":"int64","Operator":"is_not_null","FirstValue":"0","SecondValue":"","Returns":null}]}', 'ruletree');
INSERT INTO public.export_filters VALUES ('\\x6c6f63616c20737472696e6773203d20726571756972652822737472696e677322290a0a66756e6374696f6e2066696c746572286576656e74290a202020206c6f63616c20726574203d207b7d0a202020206c6f63616c206f6b5f31203d20747275650a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e672822436f6c6c6563746f7254797065222c20227379736c6f6722290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e416374696f6e222c202264656c65746520617373657422290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4f7574636f6d65222c20227375636365737322290a20202020656e640a202020202d2d20616e640a20202020646f0a20202020202020206f6b5f31203d206f6b5f3120616e6420206576656e743a686173537472696e6728224576656e742e4d6f64756c65222c20227363616e6e6572767322290a20202020656e640a202020206966206f6b5f31207468656e2072657475726e2072657420656e640a656e640a', 'ETECS.Сканер-ВС 6.Удалён актив', 'Удаление актива из Сканер-ВС 6', '0a41ddd8-ab02-4314-a8bb-6a04eb45ef22', '{"ID":"ra9svhekk","ParentID":"","Condition":"and","Children":[{"ID":"s6td5sjh0","ParentID":"ra9svhekk","Field":"CollectorType","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"syslog","SecondValue":"","Returns":null},{"ID":"x2ddtj40i","ParentID":"ra9svhekk","Field":"Event.Action","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"delete asset","SecondValue":"","Returns":null},{"ID":"ny6j6k6n6","ParentID":"ra9svhekk","Field":"Event.Outcome","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"success","SecondValue":"","Returns":null},{"ID":"lr0kq80xa","ParentID":"ra9svhekk","Field":"Event.Module","RenderType":"text","ValueType":"string","Operator":"equal","FirstValue":"scannervs","SecondValue":"","Returns":null}]}', 'ruletree');


--
-- Data for Name: export_plugin; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.export_plugin VALUES ('Auditd', 'Нормализация логов Linux Auditd в Elastic Common Schema.', 'regex', 100006, 'processors:
  # модуль нормализации сообщений Linux Auditd
  - module: auditd

', '`auditd` (сокращение от *Linux Audit Daemon*) — фоновый компонент логирования *Linux Auditing System*, работает в userspace. Правила аудита настраиваются файлами в папке `/etc/audit/audit.rules` на локальном узле Linux. Конфигурация в операционной системе настраивается в файле `/etc/audit/auditd.conf`. Для управления службой аудита используйте инструмент ОС `auditctl`.

Плагин `auditd` извлекает и нормализует информацию из логов службы аудита Linux:

 - отметку времени события;
 - тип и источник события;
 - изменения в файлах конфигурации;
 - попытки доступа к логам аудита;
 - все события аутентификации и действий с аутентифицированными пользователями;
 - изменения важных файлов, например, `/etc/passwd`;
 - прочие события.
', '', 'type=SYSCALL msg=audit(1485893834.891: 18877199): arch=c000003e syscall=44 success=yes exit=184 a0=9 a1=7f564b2672a0 a2=b8 a3=0 items=0 ppid=1240 pid=1281 auid=4294967295 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0 fsgid=0 tty=(none) ses=4294967295 comm="charon" exe=2F7573722F6C6962657865632F7374726F6E677377616E2F636861726F6E202864656C6574656429 key=(null)

', NULL, NULL, NULL);
INSERT INTO public.export_plugin VALUES ('deny', 'Фильтр событий для уменьшения нагрузки на клиента', 'regex', 100001, 'processors:
  # модуль нормализации логов GROK (будет выполнен)
  - module: grok
    from: Raw
    patterns:
      HTTP_ANSWER: "%{IP:ECS.Client.IP} - - %{GREEDYDATA}"
  # модуль нормализации логов DENY (фильтрация событий)
  - module: deny
    when:
      # фильтрация событий используя регулярные выражения
      regex:
        - name: "Date"
          value: "(\\\\d{2}).(\\\\d{2}).(\\\\d{4})"
      # фильтрация событий используя CEL выражения
      cel:
        - "event[\\"ECS.Client.IP\\"] == \\"127.0.0.1\\""
    # модуль нормализации логов GROK (не будет выполнен)
  - module: grok
    from: Raw
    patterns:
      HTTP_ANSWER: "%{GREEDYDATA} %{WORD:ECS.HTTP.RequestMethod}"
', 'Плагин позволяет фильтровать события используя регулярные выражения и
Common Expression Language(CEL).

Правила использования регулярных выражений:
```
regex:
  - name: "name_1"
    value: "regex_rule_1"
  - name: "name_2"
    value: "regex_rule_2"    
```
```regex``` - массив правил, где ```name``` - имя поля события, ```value``` - регулярное выражение.

Правила использования CEL:
```
cel:
  - "event[\\"ECS.Client.IP\\"] == \\"127.0.0.1\\""   
```
```cel``` - массив правил.
```event``` - ```map``` структура в которой хранятся все поля текущего события.
Для того чтобы обратиться к полю события достаточно написать: ```event.someField```. 
Если название поля использует помимо букв ещё и другие символы, 
то к полю стоит обращаться так: ```event[\\"Some.Field\\"]```.

Если хотя бы одно из правил regex или CEL будет выполнено, 
то событие пропускается и дальнейшие плагины выполняться не будут.
', '', '127.0.0.1 - - [23/Apr/2014:22:58:32] GET', NULL, NULL, NULL);
INSERT INTO public.export_plugin VALUES ('dns', 'Обратный поиск DNS - поиск имени хоста по адресу IP', 'regex', 100007, 'processors:
  # Модуль определения обратного поиска адреса хоста по IP адреса на DNS серверах
  - module: dns
    # поля, в которых искать IP адреса
    # формат: поле_события(ip):целевое_поле(host)
    fields:
      ECS.Source.IP: ECS.Source.Domain
      ECS.Destination.IP: ECS.Destination.Domain
      # Raw: ECS.Destination.Hostname
    # действие если целевое поле уже заполнено значением
    # append - добавить (строка, через запятую), replace - заменить
    action: replace
    # параметры кэширования успешных запросов к DNS серверам
    success_cache:
      # минимальное число элементов в кэше
      capacity.initial: 1000
      # максимальное число элементов в кэше
      capacity.max: 10000
      # длительность хранения записей в кэше
      min_ttl: 1m
    # параметры кэширования ошибок в запросах к DNS серверам
    # число
    failure_cache:
      # минимальное число элементов в кэше
      capacity.initial: 1000
      # максимальное число элементов в кэше
      capacity.max: 10000
      # длительность хранения записей в кэше
      ttl: 1m
    # список DNS серверов, если не указаны - будут использоваться
    # из /etc/resolv.conf .
    # Для WMI агента указывать обязательно.
    nameservers: [''10.0.0.2'', ''77.88.8.8'', ''77.88.8.1'']
    # Максимальная продолжительность запроса к DNS серверу. Если указано
    # несколько серверов, общая максимальная продолжительность запроса
    # будет кратна значению timeout.
    timeout: 500ms
', '## Обратный поиск DNS

Модуль `dns` осуществляет обратный поиск DNS записей по IP адресу. Ответы с ошибкой и успешные ответы кэшируются в раздельном кэше на период `ttl`.

Коллектор будет использовать собственный встроенный механизм DNS без взаимодействия с операционной системой. Чтение значений в `/etc/hosts` не производится.

Модуль может значительно снизить скорость обработки событий. Увеличение размера кэша и длительности нахождения записей в кэше может ускорить работу модуля, но при большом количестве разных IP адресов в событиях может привести к чрезмерному потреблению памяти на коллекторе.


', '', '8.8.8.8', NULL, NULL, NULL);
INSERT INTO public.export_plugin VALUES ('grok', 'Нормализация логов grok в Elastic Common Schema.', 'regex', 100003, 'processors:
  # модуль нормализации логов GROK
  - module: grok
    # Определяет из какого поля необходимо брать информацию из event
    from: Raw
    # паттерны, которые являются шаблоном для парсинга логов
    patterns:
      # список паттернов для поиска
      HTTP_ANSWER: "%{IP:ECS.Client.IP} - - %{GREEDYDATA} \\"%{WORD:ECS.HTTP.RequestMethod} %{URIPATH:ECS.Event.URL} HTTP/%{NUMBER:ECS.HTTP.Version}\\" %{NUMBER:ECS.HTTP.ResponseBodyContent:int} %{NUMBER:ECS.Error.Code:int} %{addition_info}"
    # вспомогательные паттерны, которые могут использоваться для "patterns",
    # по умолчанию они не используются
    definitions:
      # список вспомогательных паттернов
      addition_info: "%{date(\\"dd/MMM/yyyy\\"):ECS.ELF.CreationDate}"
', 'Плагин позволяет извлекать и приводить к модели события Elastic Common Schema исходные события
любого формата на основе паттернов, которые были указаны в ```patterns``` и ```definitions```.

Если явно не указывать название полей событий в паттернах, 
то в полях маппинга оно отображаться не будет.

Существует возможность делать преобразования к типам ```int``` и ```float```,
задавать шаблоны даты и времени используя конструкцию ```date("...")```

Шаблон Grok паттерна: ```%{MATCHER:EXTRACT:FILTER}```, где \\
```MATCHER``` - правило (возможно, ссылка на другой паттерн), описывающее, что следует ожидать (NUMBER, WORD, и т.д.)\\
```EXTRACT``` - идентификатор, представляющий место назначения для фрагмента текста, совпавшего с ```MATCHER``` \\
```FILTER``` - постпроцессор правила для его преобразования', '', '127.0.0.1 - - [23/Apr/2014:22:58:32] "GET /index.php HTTP/1.1" 404 207 06/Mar/2013', NULL, NULL, NULL);
INSERT INTO public.export_plugin VALUES ('Рубикон', 'Нормализация логов от ПАК "РУбикон"', 'regex', 100012, '.*SRC=(?P<Source_IP>\\S+)\\s+DST=(?P<Destination_IP>\\S+)', 'SRC|DST', '', '<4>Feb 26 11:26:16 rubicon kernel: [8473484.151920] ANY ACCEPT  IN=eth0 OUT= MAC=ff:ff:ff:ff:ff:ff:40:9b:cd:de:7d:e0:08:00 SRC=10.90.90.51 DST=255.255.255.255 LEN=345 TOS=0x00 PREC=0x00 TTL=255 ID=15104 PROTO=UDP SPT=62992 DPT=62976 LEN=325', 'Destination_IP', 'ECS.Destination.IP', '');
INSERT INTO public.export_plugin VALUES ('nginx', 'Нормализация логов NGINX в Elastic Common Schema.', 'regex', 100005, 'processors:
  # модуль нормализации логов NGINX reverse proxy
  - module: nginx
    # тип логов nginx, возможные значения: access, error
    enabled: [access]
    # формат логов (plain или json)
    format: plain
    # access-log-format - шаблон для парсинга access логов.
    # По умолчанию используется стандартный шаблон nginx
    access-log-format: ''$remote_addr - $remote_user [$time_local] "$request" $status $body_bytes_sent "$http_referer" "$http_user_agent"''
', 'Плагин `nginx` можно сконфигурировать для чтения журналов доступа и ошибок популярного прокси-сервера `nginx` в форматах `plain` и `json`, с опциональным включением собственного шаблона.

`nginx` — популярный обратный прокси-сервер, HTTP-сервер, почтовый прокси-сервер.

`nginx` может записывать в журнал `access.log` события доступа пользователей до ресурсов. Настройки журнала производятся в файле конфигурации. Частое расположение журнала - `/var/log/nginx/access.log`.

В журнал `error.log` записывает ошибки работы. Частое расположение журнала - `/var/log/nginx/error.log`.


', '', '89.160.20.156 - - [25/Oct/2016:14:49:33 +0200] "GET / HTTP/1.1" 200 612 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.59 Safari/537.36"
', NULL, NULL, NULL);
INSERT INTO public.export_plugin VALUES ('reputation_list', 'Репутационные списки', 'regex', 100002, 'processors:

  - module: reputation_list
    name: alienvault_reputation
    list-type: ipv4_addr
    lookup-fields: ["Raw", "ECS.Source.IP","ECS.Destination.IP"]
    #target-flag-field: Optional.IsBlacklisted
    #target-matched-on-field-name: Optional.BlacklistedOn
    list: |
      #
      # alienvault_reputation
      #
      # ipv4 hash:ip ipset
      #
      # [AlienVault.com] (https://www.alienvault.com/) IP
      # reputation database
      #
      # Maintainer      : Alien Vault
      # Maintainer URL  : https://www.alienvault.com/
      # List source URL : https://reputation.alienvault.com/reputation.generic
      # Source File Date: Fri Nov 12 14:10:50 UTC 2021

      4.71.37.46
      14.34.157.101
      14.42.145.172
      14.111.220.134
      14.241.244.250
      18.117.69.135
      18.188.148.80
      23.247.108.44
      24.188.100.85
      27.21.147.209
      27.35.154.75
      27.38.61.75
      27.38.61.120
      27.41.36.239
      27.43.119.144
      27.43.178.112
      27.47.116.249
      27.158.79.129
      27.159.92.181
      27.194.89.189
      27.194.122.23
      27.197.24.223
      27.199.237.162
      27.203.233.132
      27.207.195.126
      27.215.53.111
      27.215.109.196
      27.215.114.223
', 'Плагин `reputation_list` ищет совпадения значений полей события по базе репутационных списков.
Формат списка - строки, возможны строки с комментариями (символ `#`).

Возможные типы списков (`list-type`): `autonomous_system`,`artifact`,`directory`,`domain_name`, `email_addr`, `file`,`ipv4_addr`, `ipv6_addr`, `mac_addr`, `mutex`, `port`, `process`, `software`, `url`, `user_account`, `windows_registry_key`, `x509_certificate`.

При совпадении поля из `lookup-fields`, имя репутационного списка будет записано в массив `ECS.Threat.Indicators`. Имя поля по которому совпало значение и само значение будут записаны в JSON массив `ECS.Threat.Enrichments`.

Опционально записывайте флаг срабатывания списка в произвольное поле (`target-flag-field`) и имя поля по которому было срабатывание (`target-matched-on-field-name`).

', '', '14.111.220.134', NULL, NULL, NULL);
INSERT INTO public.export_plugin VALUES ('Suricata IDS/NSM Eve JSON', 'Нормализация событий Suricata IDS/NSM в формате eve json', 'regex', 100000, 'processors:
  # модуль извлечения Suricata IDS eve json
  - module: suricata
  # модуль определения направления трафика
  - module: network_direction
    # список внутренних IP адресов
    internal-ip-addresses: [192.168.1.2,192.168.1.3]
    # список внутренних префиксов IP
    internal-ip-prefixes: [172.12.0.0/16]
    # список интервалов внутренних IP адресов
    internal-ip-ranges: [10.0.10.10-10.0.10.25]
', 'Плагин позволяет извлекать и приводить к модели события Elastic Common Schema **ECS** логи **Suricata IDS/NSM** в формате *Eve JSON*.

Упрощённый пример события Suricata EVE:

```json
{
  "timestamp": "2018-10-03T16:45:34.481113+0000",
  "flow_id": 116307482565223,
  "in_iface": "enp0s3",
  "event_type": "alert",
  "src_ip": "192.168.1.146",
  "src_port": 32876
}
```

Рекомендуется включать плагин `network_direction` после применения плагина `suricata`.
', '', '{
  "timestamp": "2018-10-03T16:45:34.481113+0000",
  "flow_id": 116307482565223,
  "in_iface": "enp0s3",
  "event_type": "alert",
  "src_ip": "192.168.1.146",
  "src_port": 32876,
  "dest_ip": "93.184.216.34",
  "dest_port": 80,
  "proto": "TCP",
  "tx_id": 0,
  "alert": {
    "action": "allowed",
    "gid": 1,
    "signature_id": 2013028,
    "rev": 4,
    "signature": "ET POLICY curl User-Agent Outbound",
    "category": "Attempted Information Leak",
    "severity": 2
  },
  "http": {
    "hostname": "example.org",
    "url": "\\/",
    "http_user_agent": "curl\\/7.58.0",
    "http_content_type": "text\\/html",
    "http_method": "GET",
    "protocol": "HTTP\\/1.1",
    "status": 200,
    "length": 1121
  },
  "app_proto": "http",
  "flow": {
    "pkts_toserver": 4,
    "pkts_toclient": 3,
    "bytes_toserver": 347,
    "bytes_toclient": 1654,
    "start": "2018-10-03T16:45:34.252519+0000"
  }
}
', NULL, NULL, NULL);
INSERT INTO public.export_plugin VALUES ('Направление трафика', 'Определяет направление трафика относительно периметра сети.', 'regex', 100004, 'processors:
  # модуль определения направления трафика
  - module: network_direction
    # список внутренних IP адресов
    internal-ip-addresses: [192.168.1.2,192.168.1.3]
    # список внутренних префиксов IP
    internal-ip-prefixes: [172.12.0.0/16]
    # список интервалов внутренних IP адресов
    internal-ip-ranges: [10.0.10.10-10.0.10.25]
', 'Определяет направление трафика относительно периметра сети на основе IP адресов источника и назначения. 

Если в событии присутствуют поля `ECS.Source.IP` и `ECS.Destination.IP`, будет добавлено поле `ECS.Network.Direction`. Возможные значения: `inbound`, `outbound`, `internal`, `external`.

Периметр сети задаётся параметрами конфигурации плагина:

 - список IP адресов;
 - список интервалов IP адресов;
 - список CIDR;


', '', '', NULL, NULL, NULL);
INSERT INTO public.export_plugin VALUES ('Рубикон', 'Нормализация логов от ПАК "РУбикон"', 'regex', 100011, '.*src=(?P<Source_IP>\\S+)\\s+dst=(?P<Destination_IP>\\S+)', 'src|dst', '', '<4>Feb 26 11:26:16 rubicon kernel: [8473484.151920] ANY ACCEPT  IN=eth0 OUT= MAC=ff:ff:ff:ff:ff:ff:40:9b:cd:de:7d:e0:08:00 src=10.90.90.51 dst=255.255.255.255 LEN=345 TOS=0x00 PREC=0x00 TTL=255 ID=15104 PROTO=UDP SPT=62992 DPT=62976 LEN=325', 'Destination_IP', 'ECS.Destination.IP', '');
INSERT INTO public.export_plugin VALUES ('Рубикон', 'Нормализация логов от ПАК "РУбикон"', 'regex', 100011, '.*src=(?P<Source_IP>\\S+)\\s+dst=(?P<Destination_IP>\\S+)', 'src|dst', '', '<4>Feb 26 11:26:16 rubicon kernel: [8473484.151920] ANY ACCEPT  IN=eth0 OUT= MAC=ff:ff:ff:ff:ff:ff:40:9b:cd:de:7d:e0:08:00 src=10.90.90.51 dst=255.255.255.255 LEN=345 TOS=0x00 PREC=0x00 TTL=255 ID=15104 PROTO=UDP SPT=62992 DPT=62976 LEN=325', 'Source_IP', 'ECS.Source.IP', '');
INSERT INTO public.export_plugin VALUES ('Рубикон', 'Нормализация логов от ПАК "РУбикон"', 'regex', 100012, '.*SRC=(?P<Source_IP>\\S+)\\s+DST=(?P<Destination_IP>\\S+)', 'SRC|DST', '', '<4>Feb 26 11:26:16 rubicon kernel: [8473484.151920] ANY ACCEPT  IN=eth0 OUT= MAC=ff:ff:ff:ff:ff:ff:40:9b:cd:de:7d:e0:08:00 SRC=10.90.90.51 DST=255.255.255.255 LEN=345 TOS=0x00 PREC=0x00 TTL=255 ID=15104 PROTO=UDP SPT=62992 DPT=62976 LEN=325', 'Source_IP', 'ECS.Source.IP', '');
INSERT INTO public.export_plugin VALUES ('Сканер-ВС 6', 'Нормализация логов Сканер-ВС 6', 'regex', 100008, 'json:ECS.Base.Message::all', 'json:all на ECS.Base.Message', '', '﻿{"log.level":"info","@timestamp":"2024-02-28T10:29:48.866+0300","message":"auth","service":{"name":"scanner","version":"(devel)"},"tags":["forwarded"],"source":{"ip":"192.168.56.1"},"user":{"id":"e9d2408e-4398-46ea-9b95-6e166ba8e19f","name":"admin","roles":["admin"]},"event":{"kind":["event"],"category":["authentication"],"type":["info"],"action":"logout","outcome":"success","dataset":"scannervs.audit","module":"scannervs","timezone":"MSK"},"host":{"hostname":"astra","ip":["192.168.56.119","fe80::dda9:5dce:f0a7:7e6a"],"mac":["08:00:27:8a:8a:9a"]},"scanner.auth":{"action":"logout","user_id":"e9d2408e-4398-46ea-9b95-6e166ba8e19f","login":"admin","is_root":true,"source_ip":"192.168.56.1","status":"ok","importance":""},"ecs.version":"1.6.0"}', NULL, NULL, NULL);


--
-- PostgreSQL database dump complete
--

--------------------------------------------------------------------------------------------------- NAMES OF EVENT_FIELDS, PLUGINS, FILTERS, DIRECTIVES THAT WOULDN'T BE INSERTED

                     --------------------------------------------------------------------------------------------------- EVENT_FIELDS

                     CREATE OR REPLACE FUNCTION public.print_future_inserted_event_fields_error() RETURNS VOID
                     AS $$
                         DECLARE
                             items RECORD;
                         BEGIN
                             RAISE WARNING 'Event Fields with these names will not inserted:';

                             FOR items IN SELECT DISTINCT (ef.field_name)
                                          FROM preferences.event_fields AS ef
                                                   INNER JOIN public.export_events_fields AS eef
                                                              ON eef.field_name = ef.field_name LOOP
                                                 RAISE WARNING '%', quote_ident(items.field_name);
                             END LOOP;
                         END;
                     $$
                     LANGUAGE plpgsql;


                     SELECT public.print_future_inserted_event_fields_error();

                     --------------------------------------------------------------------------------------------------- PLUGINS

                     CREATE OR REPLACE FUNCTION public.print_future_inserted_plugin_error() RETURNS VOID
                     AS $$
                         DECLARE
                             items RECORD;
                         BEGIN
                             RAISE WARNING 'Plugins with these names will not inserted:';

                             FOR items IN SELECT DISTINCT (p.name)
                                          FROM preferences.plugins AS p
                                                   INNER JOIN public.export_plugin AS ep
                                                              ON ep.name = p.name LOOP
                                         RAISE WARNING '%', quote_ident(items.name);
                             END LOOP;
                         END;
                     $$
                     LANGUAGE plpgsql;


                     SELECT public.print_future_inserted_plugin_error();

                     --------------------------------------------------------------------------------------------------- FILTERS

                     CREATE OR REPLACE FUNCTION public.print_future_inserted_filters_error() RETURNS VOID
                     AS $$
                         DECLARE
                             items RECORD;
                         BEGIN
                             RAISE WARNING 'Filters with these names will not inserted:';

                             FOR items IN SELECT DISTINCT (f.name)
                                          FROM preferences.filters AS f
                                                   INNER JOIN public.export_filters AS ef
                                                              ON ef.name = f.name
                                          WHERE f.deleted_at IS NULL LOOP
                                                         RAISE WARNING '%', quote_ident(items.name);
                             END LOOP;
                         END;
                     $$
                     LANGUAGE plpgsql;


                     SELECT public.print_future_inserted_filters_error();

                     --------------------------------------------------------------------------------------------------- DIRECTIVES

                     CREATE OR REPLACE FUNCTION public.print_future_inserted_directives_error() RETURNS VOID
                     AS $$
                         DECLARE
                             items RECORD;
                         BEGIN
                             RAISE WARNING 'Directives with these names will not inserted:';

                             FOR items IN SELECT DISTINCT (d.name)
                                          FROM corrdisp.directives AS d
                                                   INNER JOIN public.export_directives AS ed
                                                              ON ed.name = d.name LOOP
                                                                 RAISE WARNING '%', quote_ident(items.name);
                             END LOOP;
                         END;
                     $$
                     LANGUAGE plpgsql;


                     SELECT public.print_future_inserted_directives_error();

      -- free memory
      --event_fields
      DROP FUNCTION IF EXISTS public.print_future_inserted_event_fields_error();
      -- plugins
      DROP FUNCTION IF EXISTS public.print_future_inserted_plugin_error();
      -- filters
      DROP FUNCTION IF EXISTS public.print_future_inserted_filters_error();
      -- directives
      DROP FUNCTION IF EXISTS public.print_future_inserted_directives_error();
      -- incidents
      DROP FUNCTION IF EXISTS public.print_future_inserted_incidents_error();

      --------------------------------------------------------------------------------------------------- INSERT

      --------------------------------------------------------------------------------------------------- INSERT EVENT_FIELDS
      INSERT INTO preferences.event_fields as ef (field_name, render_type, short_description,
                                                  long_description, source, source_type,
                                                  display_priority, value_type)
          SELECT eef.field_name, eef.field_render_type,
                 eef.field_short_description, eef.field_long_description,
                 eef.field_source, eef.field_source_type,
                 eef.field_display_priority, eef.field_value_type
          FROM public.export_events_fields AS eef
          ON CONFLICT DO NOTHING;

      --------------------------------------------------------------------------------------------------- INSERT PLUGINS
      -- This table was created so as not to duplicate
      -- the insertion of events in the plugin if the
      -- event has more than one mapping
      CREATE TABLE IF NOT EXISTS public.unique_bijection(
          id   SERIAL  NOT NULL CONSTRAINT plugin_items_pkey PRIMARY KEY,
          plugin_id INTEGER,
          old_id SERIAL,
          new_id INTEGER,
          body      TEXT,
          description   VARCHAR(1024),
          normalization_rule preferences.normalization_rule_text,
          sample_text TEXT,
          UNIQUE (old_id, description)
          );

      -- This decision is using for bijection between
      -- plugins_item with same description and theirs mapping
      CREATE OR REPLACE FUNCTION public.after_insert_into_unique_bijection() RETURNS TRIGGER AS
      $$
          BEGIN
              UPDATE public.unique_bijection SET new_id = NEW.id
                  WHERE id = (SELECT id
                              FROM public.unique_bijection as ub
                              WHERE ub.new_id IS NULL AND
                                      ub.plugin_id = NEW.plugin_id AND
                                      ub.description = NEW.description AND
                                      ub.body = NEW.body
                              ORDER BY id LIMIT 1);
              RETURN NEW;
          END;
      $$ LANGUAGE plpgsql;

      CREATE TRIGGER biject_trig
          AFTER INSERT
          ON preferences.plugin_items
          FOR EACH ROW
          EXECUTE PROCEDURE public.after_insert_into_unique_bijection();


      CREATE TABLE IF NOT EXISTS public.pl_items(
          id SERIAL,
          name VARCHAR(128) NOT NULL
          );

      -- start of inserting
      WITH plugins_id AS (
          -- insert plugins names
          INSERT INTO preferences.plugins AS p (name, description, plugin_type)
              SELECT ep.name, ep.descript, ep.plugin_type
                  FROM public.export_plugin AS ep
                  ON CONFLICT DO NOTHING
          RETURNING p.id, p.name
      ), _ AS (
          INSERT INTO public.pl_items (id, name)
              SELECT plugins_id.id, plugins_id.name
              FROM plugins_id
              ON CONFLICT DO NOTHING
      ), uniqs_id AS (
          -- get unique plugin_items values without mapping
          INSERT INTO public.unique_bijection AS fui (plugin_id, old_id, new_id, body, description,
                                                      normalization_rule, sample_text)
              SELECT pi.id, ep.pi_id, null,
                     ep.body, ep.item_description,
                     ep.normalization_rule, ep.sample_text
                  FROM public.export_plugin AS ep
                      LEFT JOIN plugins_id AS pi
                          ON pi.name = ep.name
                  WHERE ep.body IS NOT NULL AND
                        ep.item_description IS NOT NULL
              ON CONFLICT DO NOTHING

          RETURNING fui.plugin_id, fui.body,
                    fui.description, fui.normalization_rule,
                    fui.sample_text
      )
      -- insert plugin_items into table
      INSERT INTO preferences.plugin_items AS pi (plugin_id, body, description,
                                                  normalization_rule, sample_text)
          SELECT uniqs_id.plugin_id, uniqs_id.body, uniqs_id.description,
                 uniqs_id.normalization_rule, uniqs_id.sample_text
          FROM uniqs_id
          WHERE uniqs_id.plugin_id IS NOT NULL
          ON CONFLICT DO NOTHING;

      -- insert mapping:
      -- this insert not in multiple inserting,
      -- cause we need result of table "unique_bijection",
      -- new_id in this table will be inserted
      -- only after end of construction: WITH AS
      INSERT INTO preferences.plugin_mappings AS pm (plugin_items_id, extracted_name, description,
                                                     event_field_name, normalization_rule)
          SELECT ub.new_id, ep.extracted_name, '',
                 ep.target_name, ep.field_normalization_rule
              FROM public.export_plugin as ep
                       LEFT JOIN public.pl_items AS pi
                                 ON pi.name = ep.name
                       INNER JOIN public.unique_bijection AS ub
                                  ON pi.id = ub.plugin_id AND
                                     ub.description = ep.item_description AND
                                     ub.body = ep.body AND
                                     ub.old_id = ep.pi_id
              WHERE ep.target_name IS NOT NULL AND
                    ep.extracted_name IS NOT NULL
              ON CONFLICT DO NOTHING;

      --------------------------------------------------------------------------------------------------- INSERT FILTERS
      -- for creating real-id
      CREATE OR REPLACE FUNCTION public.create_new_real_id()
      RETURNS TRIGGER AS
      $$
          BEGIN
              NEW.real_id = NEW.id;
              RETURN NEW;
          END;
      $$ LANGUAGE plpgsql;

      CREATE TRIGGER real_id_trigger
          BEFORE INSERT
          ON preferences.filters
          FOR EACH ROW
          EXECUTE PROCEDURE public.create_new_real_id();

      INSERT INTO preferences.filters as f (source, name,
                                                                 description, user_uuid,
                                                                 rule_tree, source_type)
          SELECT ef.source,
                 ef.name,
                 ef.descript,
                 ef.user_uuid,
                 ef.rule_tree,
                 ef.source_type
          FROM public.export_filters AS ef
          ON CONFLICT DO NOTHING;

      --------------------------------------------------------------------------------------------------- INSERT DIRECTIVES
      -- this function uses for appearance directives in the UI
      CREATE OR REPLACE FUNCTION public.after_insert_into_directives() RETURNS TRIGGER AS
      $$
          BEGIN
              INSERT INTO corrdisp.realtime_correlators (directive_id, active, observers)
                  SELECT NEW.id, false, public.export_directives.observes
                  FROM public.export_directives
                      WHERE public.export_directives.name = NEW.name
                      ON CONFLICT DO NOTHING;
              RETURN NEW;
          END;
      $$ LANGUAGE plpgsql;

      CREATE TRIGGER insert_trig
          AFTER INSERT
          ON corrdisp.directives
          FOR EACH ROW
          EXECUTE PROCEDURE public.after_insert_into_directives();


      INSERT INTO corrdisp.directives (name, severity, assigned_to,
                                       reaction_script_filename, reaction_is_enabled, aggregate_in,
                                       aggregated_min_count, group_id, gossopka,
                                       recommendation , aggregate_greedily_count, gossopka_incident_type,
                                       rule, risk_score, author,
                                       reference_url, note, timestamp_override,
                                       rule_edit_state, produce_incident, produce_aggregated_event,
                                       store_keys_in_event, threats_array, gossopka_incident_category, created_at)
          SELECT  ed.name,
                  ed.severity,
                  ed.assigned_to,
                  ed.rsf,
                  ed.rie,
                  ed.aggregate_in,
                  ed.amc,
                  ed.group_id,
                  ed.gossopka,
                  ed.recommendation ,
                  ed.agc,
                  ed.git,
                  ed.rule,
                  ed.risk_score,
                  ed.author,
                  ed.reference_url,
                  ed.note,
                  ed.timestamp_override,
                  ed.res,
                  ed.produce_incident,
                  ed.pae,
                  ed.skie,
                  ed.threats_array,
                  ed.gic,
                  timezone('utc'::text, now())
          FROM public.export_directives AS ed
          WHERE ed.deleted_at IS NULL
          ON CONFLICT DO NOTHING;

      -- free memory
      -- free event fields' memory
      DROP TABLE IF EXISTS public.export_events_fields;
      -- free plugins' memory
      DROP TABLE IF EXISTS public.export_plugin;
      DROP TRIGGER IF EXISTS biject_trig ON preferences.plugin_items;
      DROP FUNCTION IF EXISTS public.after_insert_into_unique_bijection();
      DROP TABLE IF EXISTS public.unique_bijection;
      DROP TABLE IF EXISTS public.pl_items;
      -- free filters' memory
      DROP TABLE IF EXISTS public.export_filters;
      DROP TRIGGER IF EXISTS real_id_trigger ON preferences.filters;
      DROP FUNCTION IF EXISTS public.create_new_real_id();
      -- free directives' memory
      DROP TABLE IF EXISTS public.export_directives;
      DROP TRIGGER IF EXISTS insert_trig ON corrdisp.directives;
      DROP FUNCTION IF EXISTS public.after_insert_into_directives();
      -- free incidents' memory
      DROP TABLE IF EXISTS public.export_incidents;
      DROP TABLE IF EXISTS public.relation_directives_version;

      COMMIT;

