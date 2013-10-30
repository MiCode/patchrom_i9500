.class Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;
.super Ljava/lang/Object;
.source "SimeLanguageMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/SimeLanguageMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImeLangState"
.end annotation


# instance fields
.field public isValid:Z

.field public mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

.field public mLangStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/inputmethod/SimeLanguageMgr;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/SimeLanguageMgr;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)V
    .locals 1
    .parameter
    .parameter "imeLang"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->this$0:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    .line 77
    iput-object p2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLangStr:Ljava/lang/String;

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/samsung/inputmethod/SimeLanguageMgr;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "imeLang"
    .parameter "langStr"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->this$0:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    .line 82
    iput-object p2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 83
    if-eqz p3, :cond_0

    .line 84
    iput-object p3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLangStr:Ljava/lang/String;

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLangStr:Ljava/lang/String;

    goto :goto_0
.end method
