.class Lcom/android/settings_ex/smartscreen/SmartScreenSettings$5;
.super Ljava/lang/Object;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->showGuideDialogForScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    iget-object v0, v0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_scroll_noti"

    if-ne v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    #calls: Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->access$300(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    #calls: Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->access$400(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 445
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    #calls: Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->access$500(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;Ljava/lang/String;Z)V

    .line 448
    :cond_0
    return-void
.end method
