.class Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;
.super Ljava/lang/Object;
.source "SimeInputModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LangModePair"
.end annotation


# instance fields
.field mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

.field mMode:I

.field final synthetic this$1:Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;I)V
    .locals 1
    .parameter
    .parameter "lang"
    .parameter "mode"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;->this$1:Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;->mMode:I

    .line 161
    iput-object p2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 162
    iput p3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;->mMode:I

    .line 163
    return-void
.end method


# virtual methods
.method public getLangEnum()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;->mMode:I

    return v0
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 168
    iput p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;->mMode:I

    .line 169
    return-void
.end method
