.class Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$3;
.super Ljava/lang/Object;
.source "SmartSwitchWidgetProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider;->showVoiceCmdGuideDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider;

.field final synthetic val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$3;->this$0:Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider;

    iput-object p2, p0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$3;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

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

    .line 560
    iget-object v0, p0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 562
    iget-object v0, p0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$3;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voiceinputcontrol_showNeverAgain"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    :cond_0
    return-void
.end method
