.class Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$1;
.super Ljava/lang/Object;
.source "ConnectivityLocationWidgetProvider.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->mobileDataOffAlert(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;)V
    .locals 0

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$1;->this$0:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    .line 1129
    if-ne p2, v2, :cond_0

    .line 1130
    invoke-static {}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->access$800()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_mobiledata_checked"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1136
    :goto_0
    return-void

    .line 1133
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->access$800()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_mobiledata_checked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
