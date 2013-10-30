.class Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;
.super Ljava/lang/Object;
.source "SimeInputModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/SimeInputModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentKeyPadInputModeMgr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;
    }
.end annotation


# instance fields
.field mRecentModeList:[Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;

.field modeListLength:I

.field final synthetic this$0:Lcom/samsung/inputmethod/SimeInputModeSwitcher;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 7
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->this$0:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->modeListLength:I

    .line 181
    invoke-static {}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getSupportedLang()[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v1

    .line 182
    .local v1, langList:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    array-length v3, v1

    iput v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->modeListLength:I

    .line 183
    const/4 v2, 0x0

    .line 184
    .local v2, settingLangVal:I
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->modeListLength:I

    if-lez v3, :cond_0

    .line 185
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->modeListLength:I

    new-array v3, v3, [Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;

    iput-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->mRecentModeList:[Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;

    .line 186
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->modeListLength:I

    if-ge v0, v3, :cond_0

    .line 187
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSettingLangbyLangEnum(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v2

    .line 189
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->mRecentModeList:[Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;

    new-instance v4, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;

    aget-object v5, v1, v0

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->getDefaultLangKeyPadMode(I)I

    move-result v6

    invoke-direct {v4, p0, v5, v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;-><init>(Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;I)V

    aput-object v4, v3, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private findLangIdx(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I
    .locals 3
    .parameter "langEnum"

    .prologue
    .line 198
    const/4 v1, -0x1

    .line 199
    .local v1, idx:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->modeListLength:I

    if-ge v0, v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->mRecentModeList:[Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;->getLangEnum()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 201
    move v1, v0

    .line 205
    :cond_0
    return v1

    .line 199
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getRectMode(I)I
    .locals 2
    .parameter "langMask"

    .prologue
    .line 211
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->this$0:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getLangByMask(I)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->findLangIdx(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v0

    .line 213
    .local v0, idx:I
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->mRecentModeList:[Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;->getMode()I

    move-result v1

    return v1
.end method

.method public setRectMode(II)V
    .locals 2
    .parameter "langMask"
    .parameter "modeVal"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->this$0:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getLangByMask(I)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->findLangIdx(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v0

    .line 221
    .local v0, idx:I
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->mRecentModeList:[Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr$LangModePair;->setMode(I)V

    .line 222
    return-void
.end method
