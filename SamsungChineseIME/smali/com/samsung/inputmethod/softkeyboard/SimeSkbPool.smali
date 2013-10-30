.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;
.super Ljava/lang/Object;
.source "SimeSkbPool.java"


# static fields
.field private static mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;


# instance fields
.field private mSkbTemplates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private mSoftKeyboards:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->mSkbTemplates:Ljava/util/Vector;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->mSoftKeyboards:Ljava/util/Vector;

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;

    invoke-direct {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;

    .line 38
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;

    return-object v0
.end method


# virtual methods
.method public getSkbTemplate(ILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;
    .locals 4
    .parameter "skbTemplateId"
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->mSkbTemplates:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 48
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->mSkbTemplates:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    .line 49
    .local v1, t:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getSkbTemplateId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 62
    .end local v1           #t:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;
    :goto_1
    return-object v1

    .line 47
    .restart local v1       #t:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    .end local v1           #t:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;
    :cond_1
    if-eqz p2, :cond_2

    .line 55
    new-instance v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;

    invoke-direct {v2, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;-><init>(Landroid/content/Context;)V

    .line 56
    .local v2, xkbl:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;
    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->loadSkbTemplate(I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-result-object v1

    .line 57
    .restart local v1       #t:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;
    if-eqz v1, :cond_2

    .line 58
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->mSkbTemplates:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    .end local v1           #t:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;
    .end local v2           #xkbl:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .locals 4
    .parameter "skbCacheId"
    .parameter "skbXmlId"
    .parameter "skbWidth"
    .parameter "skbHeight"
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->mSoftKeyboards:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 70
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->mSoftKeyboards:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    .line 71
    .local v1, skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getCacheId()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbXmlId()I

    move-result v3

    if-ne v3, p2, :cond_1

    .line 72
    invoke-virtual {v1, p3, p4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setSkbCoreSize(II)V

    .line 73
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setNewlyLoadedFlag(Z)V

    .line 88
    .end local v1           #skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :cond_0
    :goto_1
    return-object v1

    .line 69
    .restart local v1       #skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v1           #skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :cond_2
    if-eqz p5, :cond_3

    .line 78
    new-instance v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;

    invoke-direct {v2, p5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;-><init>(Landroid/content/Context;)V

    .line 79
    .local v2, xkbl:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;
    invoke-virtual {v2, p2, p3, p4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->loadKeyboard(III)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v1

    .line 80
    .restart local v1       #skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getCacheFlag()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setCacheId(I)V

    .line 83
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->mSoftKeyboards:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    .end local v1           #skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .end local v2           #xkbl:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public resetCachedSkb()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->mSoftKeyboards:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 43
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->mSkbTemplates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 44
    return-void
.end method
