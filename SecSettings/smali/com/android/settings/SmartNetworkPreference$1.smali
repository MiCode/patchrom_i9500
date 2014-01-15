.class Lcom/android/settings_ex/SmartNetworkPreference$1;
.super Ljava/lang/Object;
.source "SmartNetworkPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SmartNetworkPreference;->showGuideDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SmartNetworkPreference;

.field final synthetic val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SmartNetworkPreference;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings_ex/SmartNetworkPreference$1;->this$0:Lcom/android/settings_ex/SmartNetworkPreference;

    iput-object p2, p0, Lcom/android/settings_ex/SmartNetworkPreference$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings_ex/SmartNetworkPreference$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/SmartNetworkPreference$1;->this$0:Lcom/android/settings_ex/SmartNetworkPreference;

    iget-object v1, p0, Lcom/android/settings_ex/SmartNetworkPreference$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SmartNetworkPreference;->toggleValue(Landroid/content/Context;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/SmartNetworkPreference$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/SmartNetworkPreference$1;->this$0:Lcom/android/settings_ex/SmartNetworkPreference;

    iget-object v1, p0, Lcom/android/settings_ex/SmartNetworkPreference$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SmartNetworkPreference;->disableGuideDialog(Landroid/content/Context;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SmartNetworkPreference$1;->this$0:Lcom/android/settings_ex/SmartNetworkPreference;

    iget-object v1, p0, Lcom/android/settings_ex/SmartNetworkPreference$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SmartNetworkPreference;->updateSmartNetworkPreference(Landroid/content/Context;)V

    .line 137
    return-void
.end method
