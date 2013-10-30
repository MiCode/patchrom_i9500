.class Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$1;
.super Ljava/lang/Object;
.source "SimeSwiftkeySettingsLanguagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->onBindView(Landroid/view/View;)V
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
    .line 120
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$000(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->cancelDownload()V

    .line 123
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$100(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->rebuildLanguageList()V

    .line 124
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    const v1, 0x7f0b0267

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->lp:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$000(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/16 v5, 0x64

    move v6, v4

    #calls: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->createNotification(IIZZII)V
    invoke-static/range {v0 .. v6}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$200(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;IIZZII)V

    .line 125
    return-void
.end method
