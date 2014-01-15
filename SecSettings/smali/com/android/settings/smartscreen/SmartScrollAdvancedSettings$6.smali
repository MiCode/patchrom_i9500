.class Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$6;
.super Ljava/lang/Object;
.source "SmartScrollAdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->showGuideDialogForScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$6;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    iput-object p2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$6;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$6;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$6;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_smart_scroll_noti"

    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$6;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 476
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$6;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 478
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$6;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$6;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    const v1, 0x7f090c14

    const v2, 0x7f090e14

    #calls: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->showAllOptionDisabledDialog(II)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$1800(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;II)V

    .line 482
    :cond_0
    return-void
.end method
