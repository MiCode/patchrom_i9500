.class public Landroid/app/SpellScroll$SpellEffect;
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
    name = "SpellEffect"
.end annotation


# static fields
.field public static final EXTRA_ATTR_KEY_ALTERNATIVES:Ljava/lang/String; = "hasAlternatives"

.field public static final EXTRA_ATTR_KEY_INTENT_FLAGS:Ljava/lang/String; = "flags"

.field public static final EXTRA_ATTR_KEY_INTENT_TYPE:Ljava/lang/String; = "type"

.field private static sIntentFlagTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1525
    const/4 v0, 0x0

    sput-object v0, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 1531
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 1524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    .line 1532
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 1534
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 1524
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    .line 1535
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1536
    .local v0, N:I
    if-lez v0, :cond_0

    .line 1537
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1538
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/SpellScroll$SpellEffect;->addIntent(Landroid/content/Intent;)V

    .line 1537
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1541
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 1542
    return-void
.end method

.method private compileDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "varName"
    .parameter "varValue"

    .prologue
    .line 1714
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1718
    :cond_0
    return-object p1
.end method

.method private static declared-synchronized convertIntentFlags(Ljava/lang/String;)I
    .locals 8
    .parameter "text"

    .prologue
    .line 1665
    const-class v5, Landroid/app/SpellScroll$SpellEffect;

    monitor-enter v5

    if-nez p0, :cond_1

    .line 1666
    const/4 v0, 0x0

    .line 1710
    :cond_0
    monitor-exit v5

    return v0

    .line 1669
    :cond_1
    const/4 v0, 0x0

    .line 1671
    .local v0, result:I
    :try_start_0
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    if-nez v4, :cond_2

    .line 1673
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    .line 1675
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_NO_HISTORY"

    const/high16 v7, 0x4000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_SINGLE_TOP"

    const/high16 v7, 0x2000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_NEW_TASK"

    const/high16 v7, 0x1000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_MULTIPLE_TASK"

    const/high16 v7, 0x800

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_CLEAR_TOP"

    const/high16 v7, 0x400

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_FORWARD_RESULT"

    const/high16 v7, 0x200

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_PREVIOUS_IS_TOP"

    const/high16 v7, 0x100

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS"

    const/high16 v7, 0x80

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_BROUGHT_TO_FRONT"

    const/high16 v7, 0x40

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_RESET_TASK_IF_NEEDED"

    const/high16 v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY"

    const/high16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET"

    const/high16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_NO_USER_ACTION"

    const/high16 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_REORDER_TO_FRONT"

    const/high16 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_NO_ANIMATION"

    const/high16 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_CLEAR_TASK"

    const v7, 0x8000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_TASK_ON_HOME"

    const/16 v7, 0x4000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    :cond_2
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v1, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    .local v1, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1699
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1701
    .local v2, token:Ljava/lang/String;
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1703
    .local v3, value:Ljava/lang/Integer;
    if-nez v3, :cond_3

    .line 1704
    const-string v4, "SpellScroll"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown flag found in \'flags\': ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1665
    .end local v1           #st:Ljava/util/StringTokenizer;
    .end local v2           #token:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1706
    .restart local v1       #st:Ljava/util/StringTokenizer;
    .restart local v2       #token:Ljava/lang/String;
    .restart local v3       #value:Ljava/lang/Integer;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    or-int/2addr v0, v4

    goto :goto_0
.end method

.method private tokenizeValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "source"
    .parameter "delimiter"

    .prologue
    .line 1826
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1828
    .local v2, validValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1831
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1832
    .local v0, token:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1833
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1837
    .end local v0           #token:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method


# virtual methods
.method public addIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 1634
    iget-object v0, p0, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1635
    return-void
.end method

.method public compile(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 26
    .parameter
    .parameter "userInput"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$Ingredient;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1722
    .local p1, compileSpec:Ljava/util/List;,"Ljava/util/List<Landroid/app/SpellScroll$Ingredient;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-nez v23, :cond_0

    .line 1723
    new-instance v23, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "No intent information in this spelleffect["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1726
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    .local v7, compiledSet:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 1729
    .local v13, intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1731
    .local v4, compiled:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/app/SpellScroll$SpellEffect;->getIntentFlags()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1733
    invoke-virtual/range {p0 .. p0}, Landroid/app/SpellScroll$SpellEffect;->getIntentType()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1

    .line 1734
    invoke-virtual/range {p0 .. p0}, Landroid/app/SpellScroll$SpellEffect;->getIntentType()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1737
    :cond_1
    if-nez p2, :cond_2

    .line 1738
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1742
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/SpellScroll$Ingredient;

    .line 1743
    .local v20, spec:Landroid/app/SpellScroll$Ingredient;
    invoke-virtual/range {v20 .. v20}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1745
    .local v21, userInputValue:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    if-eqz v23, :cond_3

    .line 1747
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1749
    .local v18, source:Ljava/lang/String;
    if-eqz v21, :cond_4

    .line 1750
    invoke-virtual/range {v20 .. v20}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/app/SpellScroll$SpellEffect;->compileDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 1754
    :cond_4
    invoke-virtual/range {v20 .. v20}, Landroid/app/SpellScroll$Ingredient;->getDefaultValue()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_3

    .line 1756
    invoke-virtual/range {v20 .. v20}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Landroid/app/SpellScroll$Ingredient;->getDefaultValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/app/SpellScroll$SpellEffect;->compileDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 1764
    .end local v18           #source:Ljava/lang/String;
    .end local v20           #spec:Landroid/app/SpellScroll$Ingredient;
    .end local v21           #userInputValue:Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    if-eqz v23, :cond_11

    .line 1765
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    .line 1766
    .local v19, sourceExtras:Landroid/os/Bundle;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1768
    .local v6, compiledExtras:Landroid/os/Bundle;
    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 1770
    .local v9, extraKey:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v11           #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1771
    .local v8, extKey:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 1772
    .local v16, rawExtraObj:Ljava/lang/Object;
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1775
    .local v17, rawExtraValue:Ljava/lang/String;
    :goto_3
    if-eqz v17, :cond_f

    .line 1777
    const/4 v15, 0x0

    .line 1778
    .local v15, isSingleArray:Z
    const/4 v14, 0x0

    .line 1779
    .local v14, isArray:Z
    const-string v22, ""

    .line 1781
    .local v22, valueDelimiter:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/SpellScroll$Ingredient;

    .line 1783
    .restart local v20       #spec:Landroid/app/SpellScroll$Ingredient;
    invoke-virtual/range {v20 .. v20}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1784
    .restart local v21       #userInputValue:Ljava/lang/String;
    move-object/from16 v5, v17

    .line 1786
    .local v5, compiledExtraValue:Ljava/lang/String;
    if-eqz v21, :cond_9

    .line 1787
    invoke-virtual/range {v20 .. v20}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/app/SpellScroll$SpellEffect;->compileDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1792
    :cond_7
    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 1793
    invoke-virtual/range {v20 .. v20}, Landroid/app/SpellScroll$Ingredient;->isSingleArray()Z

    move-result v15

    .line 1794
    invoke-virtual/range {v20 .. v20}, Landroid/app/SpellScroll$Ingredient;->isArray()Z

    move-result v14

    .line 1795
    invoke-virtual/range {v20 .. v20}, Landroid/app/SpellScroll$Ingredient;->getValueDelimiter()Ljava/lang/String;

    move-result-object v22

    .line 1797
    move-object/from16 v17, v5

    goto :goto_4

    .line 1772
    .end local v5           #compiledExtraValue:Ljava/lang/String;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #isArray:Z
    .end local v15           #isSingleArray:Z
    .end local v17           #rawExtraValue:Ljava/lang/String;
    .end local v20           #spec:Landroid/app/SpellScroll$Ingredient;
    .end local v21           #userInputValue:Ljava/lang/String;
    .end local v22           #valueDelimiter:Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    goto :goto_3

    .line 1788
    .restart local v5       #compiledExtraValue:Ljava/lang/String;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #isArray:Z
    .restart local v15       #isSingleArray:Z
    .restart local v17       #rawExtraValue:Ljava/lang/String;
    .restart local v20       #spec:Landroid/app/SpellScroll$Ingredient;
    .restart local v21       #userInputValue:Ljava/lang/String;
    .restart local v22       #valueDelimiter:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v20 .. v20}, Landroid/app/SpellScroll$Ingredient;->getDefaultValue()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_7

    .line 1789
    invoke-virtual/range {v20 .. v20}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Landroid/app/SpellScroll$Ingredient;->getDefaultValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/app/SpellScroll$SpellEffect;->compileDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 1801
    .end local v5           #compiledExtraValue:Ljava/lang/String;
    .end local v20           #spec:Landroid/app/SpellScroll$Ingredient;
    .end local v21           #userInputValue:Ljava/lang/String;
    :cond_a
    if-eqz v15, :cond_b

    .line 1802
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v17, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v6, v8, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1803
    :cond_b
    if-eqz v14, :cond_e

    .line 1804
    if-eqz v22, :cond_c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_d

    :cond_c
    const-string v22, ";"

    .line 1806
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/app/SpellScroll$SpellEffect;->tokenizeValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v8, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1809
    :cond_e
    move-object/from16 v0, v17

    invoke-virtual {v6, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1812
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #isArray:Z
    .end local v15           #isSingleArray:Z
    .end local v22           #valueDelimiter:Ljava/lang/String;
    :cond_f
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v6, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1816
    .end local v8           #extKey:Ljava/lang/String;
    .end local v16           #rawExtraObj:Ljava/lang/Object;
    .end local v17           #rawExtraValue:Ljava/lang/String;
    :cond_10
    invoke-virtual {v4, v6}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1819
    .end local v6           #compiledExtras:Landroid/os/Bundle;
    .end local v9           #extraKey:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19           #sourceExtras:Landroid/os/Bundle;
    :cond_11
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1822
    .end local v4           #compiled:Landroid/content/Intent;
    .end local v13           #intent:Landroid/content/Intent;
    :cond_12
    return-object v7
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1612
    const/4 v0, 0x0

    return v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "pw"

    .prologue
    .line 1841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hashCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/SpellScroll$SpellEffect;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/SpellScroll$SpellEffect;->getIntentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/SpellScroll$SpellEffect;->getIntentFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {p0}, Landroid/app/ExtraAttr$Owner;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      extraAttrs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ExtraAttr$Owner;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1849
    :cond_0
    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1850
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1852
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "otherObj"

    .prologue
    const/4 v5, 0x0

    .line 1563
    instance-of v6, p1, Landroid/app/SpellScroll$SpellEffect;

    if-nez v6, :cond_1

    .line 1607
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v4, p1

    .line 1567
    check-cast v4, Landroid/app/SpellScroll$SpellEffect;

    .line 1569
    .local v4, other:Landroid/app/SpellScroll$SpellEffect;
    iget-object v6, p0, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v4, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 1573
    iget-object v6, p0, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 1575
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_9

    .line 1576
    iget-object v6, p0, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1577
    .local v2, intentA:Landroid/content/Intent;
    iget-object v6, v4, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1579
    .local v3, intentB:Landroid/content/Intent;
    if-nez v2, :cond_2

    if-nez v3, :cond_0

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_0

    .line 1585
    :cond_3
    if-nez v2, :cond_5

    if-nez v3, :cond_5

    .line 1575
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1589
    :cond_5
    invoke-virtual {v2}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1593
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_0

    :cond_6
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1598
    :cond_7
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1602
    :cond_8
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_0

    .line 1607
    .end local v2           #intentA:Landroid/content/Intent;
    .end local v3           #intentB:Landroid/content/Intent;
    :cond_9
    invoke-super {p0, v4}, Landroid/app/ExtraAttr$Owner;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public getIntentFlags()I
    .locals 1

    .prologue
    .line 1660
    const-string v0, "flags"

    invoke-virtual {p0, v0}, Landroid/app/ExtraAttr$Owner;->getExtraString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SpellScroll$SpellEffect;->convertIntentFlags(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIntentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1648
    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/app/ExtraAttr$Owner;->getExtraString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAlternatives()Z
    .locals 1

    .prologue
    .line 1638
    const-string v0, "hasAlternatives"

    invoke-virtual {p0, v0}, Landroid/app/ExtraAttr$Owner;->getExtraString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1546
    invoke-super {p0}, Landroid/app/ExtraAttr$Owner;->hashCode()I

    move-result v2

    .line 1548
    .local v2, result:I
    iget-object v3, p0, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1549
    iget-object v3, p0, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1550
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    .line 1552
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1553
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    goto :goto_0

    .line 1558
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return v2
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1630
    iget-object v0, p0, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1631
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1617
    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1619
    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1620
    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1621
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1625
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1626
    return-void
.end method
