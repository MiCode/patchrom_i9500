.class final Landroid/app/ExtraAttr;
.super Ljava/lang/Object;
.source "SpellScroll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ExtraAttr$Owner;
    }
.end annotation


# instance fields
.field private final mLabelId:I

.field private final mLocalHash:I

.field private final mName:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "packageContext"
    .parameter "attr"

    .prologue
    const/4 v2, 0x0

    .line 2042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2043
    sget-object v1, Lcom/android/internal/R$styleable;->SpellExtraAttr:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2046
    .local v0, ta:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    .line 2047
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    .line 2048
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/ExtraAttr;->mLabelId:I

    .line 2050
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2052
    invoke-direct {p0}, Landroid/app/ExtraAttr;->calculateLocalHash()I

    move-result v1

    iput v1, p0, Landroid/app/ExtraAttr;->mLocalHash:I

    .line 2053
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "labelId"

    .prologue
    .line 2063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2064
    iput-object p1, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    .line 2065
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    .line 2066
    iput p2, p0, Landroid/app/ExtraAttr;->mLabelId:I

    .line 2068
    invoke-direct {p0}, Landroid/app/ExtraAttr;->calculateLocalHash()I

    move-result v0

    iput v0, p0, Landroid/app/ExtraAttr;->mLocalHash:I

    .line 2069
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2056
    iput-object p1, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    .line 2057
    iput-object p2, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    .line 2058
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ExtraAttr;->mLabelId:I

    .line 2060
    invoke-direct {p0}, Landroid/app/ExtraAttr;->calculateLocalHash()I

    move-result v0

    iput v0, p0, Landroid/app/ExtraAttr;->mLocalHash:I

    .line 2061
    return-void
.end method

.method private calculateLocalHash()I
    .locals 2

    .prologue
    .line 2072
    const/4 v0, 0x0

    .line 2074
    .local v0, result:I
    iget-object v1, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2075
    iget-object v1, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 2078
    :cond_0
    iget-object v1, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2079
    iget-object v1, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 2082
    :cond_1
    iget v1, p0, Landroid/app/ExtraAttr;->mLabelId:I

    xor-int/2addr v0, v1

    .line 2084
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "otherObj"

    .prologue
    const/4 v1, 0x0

    .line 2106
    instance-of v2, p1, Landroid/app/ExtraAttr;

    if-nez v2, :cond_1

    .line 2132
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 2110
    check-cast v0, Landroid/app/ExtraAttr;

    .line 2112
    .local v0, other:Landroid/app/ExtraAttr;
    iget v2, p0, Landroid/app/ExtraAttr;->mLocalHash:I

    iget v3, v0, Landroid/app/ExtraAttr;->mLocalHash:I

    if-ne v2, v3, :cond_0

    .line 2116
    iget-object v2, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2122
    :cond_4
    iget-object v2, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, v0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_5
    iget-object v2, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_6
    iget-object v2, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2128
    :cond_7
    iget v2, p0, Landroid/app/ExtraAttr;->mLabelId:I

    iget v3, v0, Landroid/app/ExtraAttr;->mLabelId:I

    if-ne v2, v3, :cond_0

    .line 2132
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getLabelId()I
    .locals 1

    .prologue
    .line 2096
    iget v0, p0, Landroid/app/ExtraAttr;->mLabelId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2088
    iget-object v0, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2092
    iget-object v0, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2101
    iget v0, p0, Landroid/app/ExtraAttr;->mLocalHash:I

    return v0
.end method
