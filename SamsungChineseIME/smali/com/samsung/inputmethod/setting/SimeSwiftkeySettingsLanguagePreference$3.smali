.class Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;
.super Lcom/touchtype_fluency/util/ProgressListener;
.source "SimeSwiftkeySettingsLanguagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/ProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZZZ)V
    .locals 2
    .parameter "success"
    .parameter "cancelled"
    .parameter "digestOK"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$100(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    move-result-object v0

    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method

.method public onProgress(II)V
    .locals 2
    .parameter "current"
    .parameter "maximum"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$100(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    move-result-object v0

    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$1;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;II)V

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method
