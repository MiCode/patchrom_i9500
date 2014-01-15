.class Lcom/android/settings_ex/fmm/RemoteControls$4;
.super Ljava/lang/Object;
.source "RemoteControls.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fmm/RemoteControls;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fmm/RemoteControls;

.field final synthetic val$chkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fmm/RemoteControls;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/settings_ex/fmm/RemoteControls$4;->this$0:Lcom/android/settings_ex/fmm/RemoteControls;

    iput-object p2, p0, Lcom/android/settings_ex/fmm/RemoteControls$4;->val$chkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

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

    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/fmm/RemoteControls$4;->this$0:Lcom/android/settings_ex/fmm/RemoteControls;

    #calls: Lcom/android/settings_ex/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/fmm/RemoteControls;->access$800(Lcom/android/settings_ex/fmm/RemoteControls;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/fmm/RemoteControls$4;->val$chkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sput-boolean v2, Lcom/android/settings_ex/fmm/RemoteControls;->chkboxFlag:Z

    .line 248
    :cond_0
    return-void
.end method
