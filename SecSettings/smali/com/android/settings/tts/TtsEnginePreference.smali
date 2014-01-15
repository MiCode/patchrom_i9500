.class public Lcom/android/settings_ex/tts/TtsEnginePreference;
.super Landroid/preference/Preference;
.source "TtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;
    }
.end annotation


# static fields
.field private static final DISABLED_ALPHA:F = 0.4f

.field static final FRAGMENT_ARGS_LABEL:Ljava/lang/String; = "label"

.field static final FRAGMENT_ARGS_NAME:Ljava/lang/String; = "name"

.field static final FRAGMENT_ARGS_VOICES:Ljava/lang/String; = "voices"


# instance fields
.field private final mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private final mPreferenceActivity:Landroid/preference/PreferenceActivity;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSettingsIcon:Landroid/view/View;

.field private final mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

.field private mVoiceCheckData:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;Landroid/preference/PreferenceActivity;)V
    .locals 1
    .parameter "context"
    .parameter "info"
    .parameter "state"
    .parameter "prefActivity"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Lcom/android/settings_ex/tts/TtsEnginePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/tts/TtsEnginePreference$1;-><init>(Lcom/android/settings_ex/tts/TtsEnginePreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 96
    const v0, 0x7f0400fa

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 98
    iput-object p3, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    .line 99
    iput-object p4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    .line 100
    iput-object p2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/preference/PreferenceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method private enableSettingsButton(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 218
    :cond_0
    return-void
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    if-eqz p2, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 198
    invoke-direct {p0, p2}, Lcom/android/settings_ex/tts/TtsEnginePreference;->enableSettingsButton(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 109
    iget-object v6, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    if-nez v6, :cond_0

    .line 110
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 114
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 115
    .local v3, view:Landroid/view/View;
    const v6, 0x7f0b02f8

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 116
    .local v1, rb:Landroid/widget/RadioButton;
    iget-object v6, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v7}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    .local v0, isChecked:Z
    if-eqz v0, :cond_1

    .line 120
    iget-object v6, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v6, v1}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 123
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 124
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 125
    iput-boolean v5, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 127
    iput-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 129
    const v6, 0x7f0b02f9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 130
    .local v2, textLayout:Landroid/view/View;
    new-instance v6, Lcom/android/settings_ex/tts/TtsEnginePreference$2;

    invoke-direct {v6, p0, v1}, Lcom/android/settings_ex/tts/TtsEnginePreference$2;-><init>(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/RadioButton;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v6, 0x7f0b02fa

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    .line 140
    iget-object v6, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v7, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v7, :cond_3

    :goto_0
    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 141
    invoke-direct {p0, v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->enableSettingsButton(Z)V

    .line 142
    iget-object v4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    new-instance v5, Lcom/android/settings_ex/tts/TtsEnginePreference$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/tts/TtsEnginePreference$3;-><init>(Lcom/android/settings_ex/tts/TtsEnginePreference;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v4, :cond_2

    .line 163
    iget-object v4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 166
    :cond_2
    return-object v3

    :cond_3
    move v4, v5

    .line 140
    goto :goto_0
.end method

.method public getVoiceDataDetails()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    return-object v0
.end method

.method public setVoiceDataDetails(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->enableSettingsButton(Z)V

    .line 178
    :cond_0
    return-void
.end method
