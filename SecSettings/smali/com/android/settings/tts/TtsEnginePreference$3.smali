.class Lcom/android/settings_ex/tts/TtsEnginePreference$3;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/tts/TtsEnginePreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/tts/TtsEnginePreference;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 145
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v2, args:Landroid/os/Bundle;
    const-string v0, "name"

    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;
    invoke-static {v1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$100(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "label"

    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;
    invoke-static {v1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$100(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$200(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "voices"

    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$200(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$300(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;
    invoke-static {v4}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$100(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 159
    return-void
.end method
