.class Lcom/android/settings_ex/tts/TtsEnginePreference$2;
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

.field final synthetic val$rb:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/RadioButton;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    iput-object p2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->val$rb:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->val$rb:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->val$rb:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/settings_ex/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    invoke-static {v1, v2, v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$000(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V

    .line 134
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
