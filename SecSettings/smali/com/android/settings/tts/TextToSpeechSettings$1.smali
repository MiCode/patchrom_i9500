.class Lcom/android/settings_ex/tts/TextToSpeechSettings$1;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/tts/TextToSpeechSettings;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings_ex/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings_ex/tts/TextToSpeechSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->onInitEngine(I)V

    .line 107
    return-void
.end method
