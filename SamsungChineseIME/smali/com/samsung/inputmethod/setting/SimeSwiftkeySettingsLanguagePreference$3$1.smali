.class Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;
.super Ljava/lang/Object;
.source "SimeSwiftkeySettingsLanguagePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->onProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

.field final synthetic val$current:I

.field final synthetic val$maximum:I


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iput p2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;->val$maximum:I

    iput p3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;->val$current:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 308
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v0, v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$400(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;->val$maximum:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 309
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v0, v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$400(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;->val$current:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 311
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v0, v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    const v1, 0x7f0b0267

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v2, v2, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$000(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;->val$maximum:I

    iget v6, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;->val$current:I

    #calls: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->createNotification(IIZZII)V
    invoke-static/range {v0 .. v6}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$200(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;IIZZII)V

    .line 315
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 316
    .local v8, json:Lorg/json/JSONObject;
    const-string v0, "download-progress"

    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;->val$current:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 317
    const-string v0, "download-max"

    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;->val$maximum:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 318
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v0, v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$000(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v8           #json:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v7

    .line 320
    .local v7, e:Lorg/json/JSONException;
    const-string v0, "SwiftkeyLanguagePreference"

    const-string v1, "downloadlanguagepack progressListener exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
