.class Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;
.super Ljava/lang/Object;
.source "SimeSwiftkeySettingsLanguagePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->onComplete(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iput-boolean p2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 331
    iget-boolean v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;->val$success:Z

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v0, v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$100(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->rebuildLanguageList()V

    .line 333
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v0, v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    const v1, 0x7f0b0266

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v2, v2, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$000(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move v5, v4

    move v6, v4

    #calls: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->createNotification(IIZZII)V
    invoke-static/range {v0 .. v6}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$200(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;IIZZII)V

    .line 334
    const v7, 0x7f0b0266

    .line 335
    .local v7, resId:I
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v0, v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$100(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v2, v2, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$100(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v2, v2, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->languageNameTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$500(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 348
    :goto_0
    return-void

    .line 340
    .end local v7           #resId:I
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v0, v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$100(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->rebuildLanguageList()V

    .line 341
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v0, v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    const v1, 0x7f0b0267

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v2, v2, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$000(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move v5, v4

    move v6, v4

    #calls: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->createNotification(IIZZII)V
    invoke-static/range {v0 .. v6}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$200(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;IIZZII)V

    .line 342
    const v7, 0x7f0b0267

    .line 343
    .restart local v7       #resId:I
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v0, v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$100(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v2, v2, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$100(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3$2;->this$1:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;

    iget-object v2, v2, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->languageNameTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$500(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
