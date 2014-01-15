.class public Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DBG:Z = false

.field private static final KEY_ENGINE_LOCALE:Ljava/lang/String; = "tts_default_lang"

.field private static final KEY_ENGINE_SETTINGS:Ljava/lang/String; = "tts_engine_settings"

.field private static final KEY_INSTALL_DATA:Ljava/lang/String; = "tts_install_data"

.field private static final TAG:Ljava/lang/String; = "TtsEngineSettings"

.field private static final VOICE_DATA_INTEGRITY_CHECK:I = 0x7b9


# instance fields
.field private mEngineSettingsIntent:Landroid/content/Intent;

.field private mEngineSettingsPreference:Landroid/preference/Preference;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mInstallVoicesPreference:Landroid/preference/Preference;

.field private final mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalePreference:Landroid/preference/ListPreference;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mVoiceDataDetails:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment$1;-><init>(Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 82
    new-instance v0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment$2;-><init>(Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->checkTtsData()V

    return-void
.end method

.method private final checkTtsData()V
    .locals 5

    .prologue
    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const/16 v2, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check TTS data, no activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getEngineLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEngineName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private installVoiceData()V
    .locals 5

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    :goto_0
    return-void

    .line 264
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 266
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    :try_start_0
    const-string v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installing voice data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to install TTS data, no acitivty found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDefaultLocalePref(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, availableLangs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, currentLocale:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 210
    .local v3, entryPairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 211
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, langCountryVariant:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 213
    .local v9, loc:Ljava/util/Locale;
    array-length v11, v8

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 214
    new-instance v9, Ljava/util/Locale;

    .end local v9           #loc:Ljava/util/Locale;
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-direct {v9, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 221
    .restart local v9       #loc:Ljava/util/Locale;
    :cond_0
    :goto_1
    if-eqz v9, :cond_1

    .line 222
    new-instance v11, Landroid/util/Pair;

    invoke-virtual {v9}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 215
    :cond_2
    array-length v11, v8

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 216
    new-instance v9, Ljava/util/Locale;

    .end local v9           #loc:Ljava/util/Locale;
    const/4 v11, 0x0

    aget-object v11, v8, v11

    const/4 v12, 0x1

    aget-object v12, v8, v12

    invoke-direct {v9, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v9       #loc:Ljava/util/Locale;
    goto :goto_1

    .line 217
    :cond_3
    array-length v11, v8

    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    .line 218
    new-instance v9, Ljava/util/Locale;

    .end local v9           #loc:Ljava/util/Locale;
    const/4 v11, 0x0

    aget-object v11, v8, v11

    const/4 v12, 0x1

    aget-object v12, v8, v12

    const/4 v13, 0x2

    aget-object v13, v8, v13

    invoke-direct {v9, v11, v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v9       #loc:Ljava/util/Locale;
    goto :goto_1

    .line 228
    .end local v8           #langCountryVariant:[Ljava/lang/String;
    .end local v9           #loc:Ljava/util/Locale;
    :cond_4
    new-instance v11, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment$3;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment$3;-><init>(Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;)V

    invoke-static {v3, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 236
    const/4 v10, -0x1

    .line 237
    .local v10, selectedLanguageIndex:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v1, v11, [Ljava/lang/CharSequence;

    .line 238
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v4, v11, [Ljava/lang/CharSequence;

    .line 239
    .local v4, entryValues:[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 240
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 241
    .local v2, entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v11, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 242
    move v10, v5

    .line 244
    :cond_5
    iget-object v11, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    aput-object v11, v1, v5

    .line 245
    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .local v6, i:I
    iget-object v11, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    aput-object v11, v4, v5

    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_2

    .line 248
    .end local v2           #entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    iget-object v11, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 249
    iget-object v11, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 250
    const/4 v11, -0x1

    if-le v10, v11, :cond_7

    .line 251
    iget-object v11, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v10}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 256
    :goto_3
    return-void

    .line 253
    :cond_7
    iget-object v11, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 254
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->updateLanguageTo(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private updateLanguageTo(Ljava/lang/String;)V
    .locals 6
    .parameter "locale"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-static {p1}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, localeArray:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v2, Ljava/util/Locale;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 306
    .end local v0           #localeArray:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateVoiceDetails()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    const-string v3, "availableVoices"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 177
    .local v0, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    const-string v3, "unavailableVoices"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 180
    .local v1, unavailable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 181
    const-string v2, "TtsEngineSettings"

    const-string v3, "TTS data check failed (available == null)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 183
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    :goto_0
    return-void

    .line 187
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 189
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 194
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 196
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 197
    invoke-direct {p0, v0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->updateDefaultLocalePref(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 200
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 166
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    .line 167
    iput-object p3, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    .line 168
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->updateVoiceDetails()V

    .line 170
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v1, 0x7f07008a

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 100
    new-instance v1, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 102
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 103
    .local v0, root:Landroid/preference/PreferenceScreen;
    const-string v1, "tts_default_lang"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    .line 104
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    const-string v1, "tts_engine_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    .line 106
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    const-string v1, "tts_install_data"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    .line 108
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->getEngineLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->getEngineLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09080e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->getEngineLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/tts/TtsEngines;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 129
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 130
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    new-array v2, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    new-array v2, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "voices"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    .line 135
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 140
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->checkTtsData()V

    .line 142
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.speech.tts.engine.TTS_DATA_INSTALLED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 150
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 151
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 291
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->updateLanguageTo(Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 277
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->installVoiceData()V

    .line 285
    :goto_0
    return v0

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 285
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 318
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 319
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;->updateVoiceDetails()V

    .line 320
    return-void
.end method
