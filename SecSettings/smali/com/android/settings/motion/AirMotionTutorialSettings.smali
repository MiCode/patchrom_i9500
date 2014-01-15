.class public Lcom/android/settings_ex/motion/AirMotionTutorialSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AirMotionTutorialSettings.java"


# static fields
.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_AIR_MOTION_CALL_ACCEPT:Ljava/lang/String; = "air_call_accept"

.field private static final KEY_AIR_MOTION_CLIP:Ljava/lang/String; = "air_motion_clip"

.field private static final KEY_AIR_MOTION_GLANCE_VIEW:Ljava/lang/String; = "air_motion_glance_view"

.field private static final KEY_AIR_MOTION_ITEM_MOVE:Ljava/lang/String; = "air_motion_item_move"

.field private static final KEY_AIR_MOTION_NOTE_SWAP:Ljava/lang/String; = "air_motion_note_swap"

.field private static final KEY_AIR_MOTION_SCROLL:Ljava/lang/String; = "air_motion_scroll"

.field private static final KEY_AIR_MOTION_WEB_NAVIGATE:Ljava/lang/String; = "air_motion_web_navigate"

.field private static final KEY_CATEGORY_AIR_MOTION:Ljava/lang/String; = "category_air_motion"

.field private static final TAG:Ljava/lang/String; = "AirMotionTutorialSettings"


# instance fields
.field private mAirCallAccept:Landroid/preference/Preference;

.field private mAirClip:Landroid/preference/Preference;

.field private mAirGlanceView:Landroid/preference/Preference;

.field private mAirItemMove:Landroid/preference/Preference;

.field private mAirMotionCategory:Landroid/preference/PreferenceCategory;

.field private mAirMotionScroll:Landroid/preference/Preference;

.field private mAirNoteSwap:Landroid/preference/Preference;

.field private mAirWebNavigate:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, arguments:Landroid/os/Bundle;
    const-string v3, "type"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 63
    .local v1, isMotionTutorial:Z
    :cond_0
    const v3, 0x7f07000b

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 65
    const-string v3, "category_air_motion"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings_ex/motion/AirMotionTutorialSettings;->mAirMotionCategory:Landroid/preference/PreferenceCategory;

    .line 66
    const-string v3, "air_motion_glance_view"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/AirMotionTutorialSettings;->mAirGlanceView:Landroid/preference/Preference;

    .line 67
    const-string v3, "air_motion_web_navigate"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/AirMotionTutorialSettings;->mAirWebNavigate:Landroid/preference/Preference;

    .line 68
    const-string v3, "air_motion_note_swap"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/AirMotionTutorialSettings;->mAirNoteSwap:Landroid/preference/Preference;

    .line 69
    const-string v3, "air_motion_scroll"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/AirMotionTutorialSettings;->mAirMotionScroll:Landroid/preference/Preference;

    .line 70
    const-string v3, "air_motion_item_move"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/AirMotionTutorialSettings;->mAirItemMove:Landroid/preference/Preference;

    .line 71
    const-string v3, "air_motion_clip"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/AirMotionTutorialSettings;->mAirClip:Landroid/preference/Preference;

    .line 72
    const-string v3, "air_call_accept"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/AirMotionTutorialSettings;->mAirCallAccept:Landroid/preference/Preference;

    .line 74
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 87
    .local v2, ps:Landroid/preference/PreferenceScreen;
    return-void
.end method
