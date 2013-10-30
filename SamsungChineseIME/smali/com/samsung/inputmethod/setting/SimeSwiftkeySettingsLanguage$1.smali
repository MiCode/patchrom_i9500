.class Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1;
.super Lcom/touchtype_fluency/util/CompletionListener;
.source "SimeSwiftkeySettingsLanguage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/CompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1$1;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method
