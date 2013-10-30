.class public Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;
.super Ljava/lang/Object;
.source "SimePhraseInfo.java"


# instance fields
.field private mPhrase:Ljava/lang/String;

.field private mSpell:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;->mPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getSpell()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;->mSpell:Ljava/lang/String;

    return-object v0
.end method

.method public setPhrase(Ljava/lang/String;)V
    .locals 0
    .parameter "phrase"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;->mPhrase:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public setSpell(Ljava/lang/String;)V
    .locals 0
    .parameter "spell"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;->mSpell:Ljava/lang/String;

    .line 14
    return-void
.end method
