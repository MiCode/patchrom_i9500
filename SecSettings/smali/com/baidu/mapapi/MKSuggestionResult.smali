.class public Lcom/baidu/mapapi/MKSuggestionResult;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKSuggestionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/MKSuggestionResult;->a:I

    return-void
.end method


# virtual methods
.method a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKSuggestionInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/mapapi/MKSuggestionResult;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public getAllSuggestions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKSuggestionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/MKSuggestionResult;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSuggestion(I)Lcom/baidu/mapapi/MKSuggestionInfo;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKSuggestionResult;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/mapapi/MKSuggestionResult;->a:I

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MKSuggestionResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/MKSuggestionInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestionNum()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKSuggestionResult;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MKSuggestionResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/MKSuggestionResult;->a:I

    :goto_0
    iget v0, p0, Lcom/baidu/mapapi/MKSuggestionResult;->a:I

    return v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/MKSuggestionResult;->a:I

    goto :goto_0
.end method
