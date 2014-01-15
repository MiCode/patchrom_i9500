.class Lcom/android/settings_ex/MouseHoveringViewEnabler$3;
.super Ljava/lang/Object;
.source "MouseHoveringViewEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/MouseHoveringViewEnabler;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MouseHoveringViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MouseHoveringViewEnabler;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler$3;->this$0:Lcom/android/settings_ex/MouseHoveringViewEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler$3;->this$0:Lcom/android/settings_ex/MouseHoveringViewEnabler;

    #getter for: Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/MouseHoveringViewEnabler;->access$100(Lcom/android/settings_ex/MouseHoveringViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler$3;->this$0:Lcom/android/settings_ex/MouseHoveringViewEnabler;

    #getter for: Lcom/android/settings_ex/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/MouseHoveringViewEnabler;->access$000(Lcom/android/settings_ex/MouseHoveringViewEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler$3;->this$0:Lcom/android/settings_ex/MouseHoveringViewEnabler;

    #getter for: Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/MouseHoveringViewEnabler;->access$100(Lcom/android/settings_ex/MouseHoveringViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler$3;->this$0:Lcom/android/settings_ex/MouseHoveringViewEnabler;

    #getter for: Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/MouseHoveringViewEnabler;->access$100(Lcom/android/settings_ex/MouseHoveringViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler$3;->this$0:Lcom/android/settings_ex/MouseHoveringViewEnabler;

    #calls: Lcom/android/settings_ex/MouseHoveringViewEnabler;->broadcastMouseHoveringChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings_ex/MouseHoveringViewEnabler;->access$200(Lcom/android/settings_ex/MouseHoveringViewEnabler;Z)V

    .line 257
    return-void
.end method
