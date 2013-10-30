.class Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1$1;
.super Ljava/lang/Object;
.source "SimeSwiftkeySettingsLanguage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1;->onComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1$1;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1;

    iput-boolean p2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1$1;->val$success:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1$1;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1;

    iget-object v0, v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    #calls: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->updateListComplete()V
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->access$000(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1$1;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1;

    iget-object v0, v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    #calls: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->updateListFail()V
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->access$100(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;)V

    goto :goto_0
.end method
