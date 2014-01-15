.class Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$1;
.super Ljava/lang/Object;
.source "SmartSwitchWidgetProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider;->showSmartStayGuideDialog(Landroid/content/Context;)V
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
    .line 487
    iput-object p1, p0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$1;->this$0:Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider;

    iput-object p2, p0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 489
    iget-object v2, p0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 490
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 491
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_smart_stay_noti"

    iget-object v3, p0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 493
    iget-object v2, p0, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider$1;->this$0:Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider;

    #calls: Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider;->stopAnimation()V
    invoke-static {v2}, Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider;->access$000(Lcom/android/settings_ex/widget/SmartSwitchWidgetProvider;)V

    .line 494
    return-void
.end method
