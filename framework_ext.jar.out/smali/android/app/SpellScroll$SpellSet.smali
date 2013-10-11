.class public Landroid/app/SpellScroll$SpellSet;
.super Landroid/app/ExtraAttr$Owner;
.source "SpellScroll.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SpellScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpellSet"
.end annotation


# static fields
.field public static final EXTRA_ATTR_KEY_NO_SPELL:Ljava/lang/String; = "no"

.field public static final EXTRA_ATTR_KEY_SET_TYPE:Ljava/lang/String; = "setType"

.field public static final EXTRA_ATTR_KEY_SPELLLIST:Ljava/lang/String; = "list"

.field public static final EXTRA_ATTR_KEY_YES_SPELL:Ljava/lang/String; = "yes"


# instance fields
.field private final mHintId:I

.field private final mLabelId:I

.field private final mLocalHash:I

.field private final mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "packageContext"
    .parameter "attr"

    .prologue
    const/4 v2, 0x0

    .line 1868
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 1869
    sget-object v1, Lcom/android/internal/R$styleable;->SpellSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1872
    .local v0, ta:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SpellScroll$SpellSet;->mName:Ljava/lang/String;

    .line 1873
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$SpellSet;->mLabelId:I

    .line 1874
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$SpellSet;->mHintId:I

    .line 1876
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1878
    iget-object v1, p0, Landroid/app/SpellScroll$SpellSet;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/SpellScroll$SpellSet;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1879
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name may not be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1882
    :cond_1
    iget v1, p0, Landroid/app/SpellScroll$SpellSet;->mLabelId:I

    if-nez v1, :cond_2

    .line 1883
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SpellSet label must be a resource reference."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1886
    :cond_2
    invoke-direct {p0}, Landroid/app/SpellScroll$SpellSet;->calculateLocalHash()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$SpellSet;->mLocalHash:I

    .line 1887
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1897
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 1898
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SpellScroll$SpellSet;->mName:Ljava/lang/String;

    .line 1899
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SpellScroll$SpellSet;->mLabelId:I

    .line 1900
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SpellScroll$SpellSet;->mHintId:I

    .line 1902
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 1904
    invoke-direct {p0}, Landroid/app/SpellScroll$SpellSet;->calculateLocalHash()I

    move-result v0

    iput v0, p0, Landroid/app/SpellScroll$SpellSet;->mLocalHash:I

    .line 1905
    return-void
.end method

.method private calculateLocalHash()I
    .locals 2

    .prologue
    .line 1920
    iget v0, p0, Landroid/app/SpellScroll$SpellSet;->mLabelId:I

    .line 1921
    .local v0, result:I
    iget v1, p0, Landroid/app/SpellScroll$SpellSet;->mHintId:I

    xor-int/2addr v0, v1

    .line 1923
    iget-object v1, p0, Landroid/app/SpellScroll$SpellSet;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1924
    iget-object v1, p0, Landroid/app/SpellScroll$SpellSet;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1927
    :cond_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1932
    const/4 v0, 0x0

    return v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 2021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SpellScroll$SpellSet;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$SpellSet;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", labelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/SpellScroll$SpellSet;->mLabelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hintId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/SpellScroll$SpellSet;->mHintId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2025
    invoke-virtual {p0}, Landroid/app/ExtraAttr$Owner;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    extraAttrs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ExtraAttr$Owner;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "otherObj"

    .prologue
    const/4 v1, 0x0

    .line 1997
    instance-of v2, p1, Landroid/app/SpellScroll$Spell;

    if-nez v2, :cond_1

    .line 2017
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 2001
    check-cast v0, Landroid/app/SpellScroll$Spell;

    .line 2003
    .local v0, other:Landroid/app/SpellScroll$Spell;
    iget-object v2, p0, Landroid/app/SpellScroll$SpellSet;->mName:Ljava/lang/String;

    if-nez v2, :cond_2

    #getter for: Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;
    invoke-static {v0}, Landroid/app/SpellScroll$Spell;->access$000(Landroid/app/SpellScroll$Spell;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Landroid/app/SpellScroll$SpellSet;->mName:Ljava/lang/String;

    if-eqz v2, :cond_3

    #getter for: Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;
    invoke-static {v0}, Landroid/app/SpellScroll$Spell;->access$000(Landroid/app/SpellScroll$Spell;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Landroid/app/SpellScroll$SpellSet;->mName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/app/SpellScroll$SpellSet;->mName:Ljava/lang/String;

    #getter for: Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;
    invoke-static {v0}, Landroid/app/SpellScroll$Spell;->access$000(Landroid/app/SpellScroll$Spell;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2009
    :cond_4
    iget v2, p0, Landroid/app/SpellScroll$SpellSet;->mLabelId:I

    #getter for: Landroid/app/SpellScroll$Spell;->mLabelId:I
    invoke-static {v0}, Landroid/app/SpellScroll$Spell;->access$100(Landroid/app/SpellScroll$Spell;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2013
    iget v2, p0, Landroid/app/SpellScroll$SpellSet;->mHintId:I

    #getter for: Landroid/app/SpellScroll$Spell;->mHintId:I
    invoke-static {v0}, Landroid/app/SpellScroll$Spell;->access$200(Landroid/app/SpellScroll$Spell;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2017
    invoke-super {p0, p1}, Landroid/app/ExtraAttr$Owner;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getHintId()I
    .locals 1

    .prologue
    .line 1953
    iget v0, p0, Landroid/app/SpellScroll$SpellSet;->mHintId:I

    return v0
.end method

.method public getLabelId()I
    .locals 1

    .prologue
    .line 1949
    iget v0, p0, Landroid/app/SpellScroll$SpellSet;->mLabelId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1945
    iget-object v0, p0, Landroid/app/SpellScroll$SpellSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNoSpellName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1965
    const-string v0, "no"

    invoke-virtual {p0, v0}, Landroid/app/ExtraAttr$Owner;->getExtraString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1957
    const-string v0, "setType"

    invoke-virtual {p0, v0}, Landroid/app/ExtraAttr$Owner;->getExtraString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpellList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1969
    const-string v5, "list"

    invoke-virtual {p0, v5}, Landroid/app/ExtraAttr$Owner;->getExtraString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1971
    .local v0, listValue:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1972
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1973
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v3, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .local v2, token:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1977
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1978
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1982
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1985
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #token:Ljava/lang/String;
    .end local v3           #tokenizer:Ljava/util/StringTokenizer;
    :goto_1
    return-object v1

    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #token:Ljava/lang/String;
    .restart local v3       #tokenizer:Ljava/util/StringTokenizer;
    :cond_2
    move-object v1, v4

    .line 1982
    goto :goto_1

    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #token:Ljava/lang/String;
    .end local v3           #tokenizer:Ljava/util/StringTokenizer;
    :cond_3
    move-object v1, v4

    .line 1985
    goto :goto_1
.end method

.method public getYesSpellName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1961
    const-string v0, "yes"

    invoke-virtual {p0, v0}, Landroid/app/ExtraAttr$Owner;->getExtraString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1990
    iget v1, p0, Landroid/app/SpellScroll$SpellSet;->mLocalHash:I

    invoke-super {p0}, Landroid/app/ExtraAttr$Owner;->hashCode()I

    move-result v2

    xor-int v0, v1, v2

    .line 1992
    .local v0, result:I
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1937
    iget-object v0, p0, Landroid/app/SpellScroll$SpellSet;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1938
    iget v0, p0, Landroid/app/SpellScroll$SpellSet;->mLabelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1939
    iget v0, p0, Landroid/app/SpellScroll$SpellSet;->mHintId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1941
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1942
    return-void
.end method
