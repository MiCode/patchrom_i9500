.class Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider$1;
.super Ljava/lang/Object;
.source "SmartNetworkWidgetProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider;->showGuideDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider;

.field final synthetic val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider;Lcom/sec/android/touchwiz/widget/TwCheckBox;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider$1;->this$0:Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider;

    iput-object p2, p0, Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p3, p0, Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider$1;->this$0:Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider;->toggleValue()V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider$1;->this$0:Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider;

    iget-object v1, p0, Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider;->disableGuideDialog(Landroid/content/Context;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider$1;->this$0:Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider;

    iget-object v1, p0, Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider$1;->val$context:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/SmartNetworkWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 179
    return-void
.end method
