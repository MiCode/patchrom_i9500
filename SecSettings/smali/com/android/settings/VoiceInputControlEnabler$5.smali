.class Lcom/android/settings_ex/VoiceInputControlEnabler$5;
.super Ljava/lang/Object;
.source "VoiceInputControlEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/VoiceInputControlEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/VoiceInputControlEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/VoiceInputControlEnabler;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings_ex/VoiceInputControlEnabler$5;->this$0:Lcom/android/settings_ex/VoiceInputControlEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 167
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 168
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 169
    iget-object v1, p0, Lcom/android/settings_ex/VoiceInputControlEnabler$5;->this$0:Lcom/android/settings_ex/VoiceInputControlEnabler;

    #getter for: Lcom/android/settings_ex/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings_ex/VoiceInputControlEnabler;->access$000(Lcom/android/settings_ex/VoiceInputControlEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 170
    const/4 v0, 0x1

    .line 172
    :cond_0
    return v0
.end method
