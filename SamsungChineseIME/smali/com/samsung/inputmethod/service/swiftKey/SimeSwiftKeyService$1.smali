.class final Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$1;
.super Ljava/lang/Object;
.source "SimeSwiftKeyService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/touchtype_fluency/util/LanguagePack;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/LanguagePack;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    .line 128
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 129
    const/4 v0, -0x1

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    check-cast p1, Lcom/touchtype_fluency/util/LanguagePack;

    .end local p1
    check-cast p2, Lcom/touchtype_fluency/util/LanguagePack;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$1;->compare(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/LanguagePack;)I

    move-result v0

    return v0
.end method
