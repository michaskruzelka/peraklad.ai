CREATE CONSTRAINT project_id_exists IF NOT EXISTS ON (p:Project) ASSERT exists(p.id);
CREATE CONSTRAINT project_name_exists IF NOT EXISTS ON (p:Project) ASSERT exists(p.name);
CREATE CONSTRAINT project_level_exists IF NOT EXISTS ON (p:Project) ASSERT exists(p.level);
CREATE CONSTRAINT project_created_at_exists IF NOT EXISTS ON (p:Project) ASSERT exists(p.createdAt);
CREATE CONSTRAINT project_updated_at_exists IF NOT EXISTS ON (p:Project) ASSERT exists(p.updatedAt);
CREATE CONSTRAINT project_settings_status_exists IF NOT EXISTS ON (ps:ProjectSettings) ASSERT exists(ps.status);
CREATE CONSTRAINT project_settings_access_exists IF NOT EXISTS ON (ps:ProjectSettings) ASSERT exists(ps.access);
CREATE CONSTRAINT project_settings_abc_exists IF NOT EXISTS ON (ps:ProjectSettings) ASSERT exists(ps.abc);
CREATE CONSTRAINT project_settings_spelling_exists IF NOT EXISTS ON (ps:ProjectSettings) ASSERT exists(ps.spelling);
CREATE CONSTRAINT video_info_service_exists IF NOT EXISTS ON (vi:VideoInfo) ASSERT exists(vi.service);
CREATE CONSTRAINT video_info_url_exists IF NOT EXISTS ON (vi:VideoInfo) ASSERT exists(vi.url);
CREATE CONSTRAINT imdb_title_exists IF NOT EXISTS ON (i:IMDB) ASSERT exists(i.title);
CREATE CONSTRAINT movie_language_exists IF NOT EXISTS ON (m:Movie) ASSERT exists(m.language);
CREATE CONSTRAINT series_language_exists IF NOT EXISTS ON (s:Series) ASSERT exists(s.language);
CREATE CONSTRAINT episode_number_exists IF NOT EXISTS ON (e:Episode) ASSERT exists(e.episodeNum);
CREATE CONSTRAINT episode_season_exists IF NOT EXISTS ON (e:Episode) ASSERT exists(e.seasonNum);
CREATE CONSTRAINT resource_id_exists IF NOT EXISTS ON (r:Resource) ASSERT exists(r.id);
CREATE CONSTRAINT resource_name_exists IF NOT EXISTS ON (r:Resource) ASSERT exists(r.name);
CREATE CONSTRAINT resource_language_exists IF NOT EXISTS ON (r:Resource) ASSERT exists(r.language);
CREATE CONSTRAINT resource_format_exists IF NOT EXISTS ON (r:Resource) ASSERT exists(r.format);
CREATE CONSTRAINT resource_status_exists IF NOT EXISTS ON (r:Resource) ASSERT exists(r.status);
CREATE CONSTRAINT resource_item_id_exists IF NOT EXISTS ON (ri:ResourceItem) ASSERT exists(ri.id);
CREATE CONSTRAINT resource_item_text_exists IF NOT EXISTS ON (ri:ResourceItem) ASSERT exists(ri.text);
CREATE CONSTRAINT resource_item_status_exists IF NOT EXISTS ON (ri:ResourceItem) ASSERT exists(ri.status);
CREATE CONSTRAINT timing_starts_at_exists IF NOT EXISTS ON (t:Timing) ASSERT exists(t.startsAt);
CREATE CONSTRAINT timing_ends_at_exists IF NOT EXISTS ON (t:Timing) ASSERT exists(t.endsAt);
CREATE CONSTRAINT recommendation_language_exists IF NOT EXISTS ON (r:Recommendation) ASSERT exists(r.language);
CREATE CONSTRAINT recommendation_text_exists IF NOT EXISTS ON (r:Recommendation) ASSERT exists(r.text);
CREATE CONSTRAINT recommendation_created_at_exists IF NOT EXISTS ON (r:Recommendation) ASSERT exists(r.createdAt);
CREATE CONSTRAINT translation_id_exists IF NOT EXISTS ON (t:Translation) ASSERT exists(t.id);
CREATE CONSTRAINT translations_status_exists IF NOT EXISTS ON (t:Translation) ASSERT exists(t.status);
CREATE CONSTRAINT translations_text_exists IF NOT EXISTS ON (t:Translation) ASSERT exists(t.text);
CREATE CONSTRAINT translations_type_exists IF NOT EXISTS ON (t:Translation) ASSERT exists(t.type);
CREATE CONSTRAINT comment_id_exists IF NOT EXISTS ON (c:Comment) ASSERT exists(c.id);
CREATE CONSTRAINT comment_text_exists IF NOT EXISTS ON (c:Comment) ASSERT exists(c.text);
CREATE CONSTRAINT user_username_exists IF NOT EXISTS ON (u:User) ASSERT exists(u.username);
CREATE CONSTRAINT user_email_exists IF NOT EXISTS ON (u:User) ASSERT exists(u.emai);
CREATE CONSTRAINT user_role_exists IF NOT EXISTS ON (u:User) ASSERT exists(u.role);
CREATE CONSTRAINT team_id_exists IF NOT EXISTS ON (t:Team) ASSERT exists(t.id);
CREATE CONSTRAINT team_name_exists IF NOT EXISTS ON (t:Team) ASSERT exists(t.name);
CREATE CONSTRAINT project_invitation_id_exists IF NOT EXISTS ON (pi:ProjectInvitation) ASSERT exists(pi.id);
CREATE CONSTRAINT project_invitation_status_exists IF NOT EXISTS ON (pi:ProjectInvitation) ASSERT exists(pi.status);
CREATE CONSTRAINT team_invitation_id_exists IF NOT EXISTS ON (ti:TeamInvitation) ASSERT exists(ti.id);
CREATE CONSTRAINT team_invitation_status_exists IF NOT EXISTS ON (ti:TeamInvitation) ASSERT exists(ti.status);
