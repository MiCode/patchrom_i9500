.class Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub$1;
.super Ljava/lang/Object;
.source "SmartScreenGuideHub.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub$1;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub$1;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mSmartScrollDBItem:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->access$000(Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "smart_scroll_sensitivity"

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub$1;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mSmartScrollDBItem:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->access$000(Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "smart_scroll_acceleration"

    if-ne v2, v3, :cond_1

    .line 238
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.sbrowsertry.SETTING_SCROLL_TRY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub$1;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;

    invoke-virtual {v2, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SmartScreenGuideHub"

    const-string v3, "Cannot find intent : com.sec.android.app.sbrowsertry.SETTING_SCROLL_TRY"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v2, "SmartScreenGuideHub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
