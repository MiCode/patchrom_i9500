.class Lcom/android/settings_ex/fmm/SimChangeAlert$5;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fmm/SimChangeAlert;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fmm/SimChangeAlert;

.field final synthetic val$chkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fmm/SimChangeAlert;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings_ex/fmm/SimChangeAlert$5;->this$0:Lcom/android/settings_ex/fmm/SimChangeAlert;

    iput-object p2, p0, Lcom/android/settings_ex/fmm/SimChangeAlert$5;->val$chkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

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

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/fmm/SimChangeAlert$5;->this$0:Lcom/android/settings_ex/fmm/SimChangeAlert;

    invoke-virtual {v0}, Lcom/android/settings_ex/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/fmm/SimChangeAlert$5;->this$0:Lcom/android/settings_ex/fmm/SimChangeAlert;

    invoke-virtual {v0}, Lcom/android/settings_ex/fmm/SimChangeAlert;->DoSave()Z

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/fmm/SimChangeAlert$5;->val$chkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    sput-boolean v2, Lcom/android/settings_ex/fmm/SimChangeAlert;->chkboxFlag:Z

    .line 275
    :cond_0
    return-void
.end method
