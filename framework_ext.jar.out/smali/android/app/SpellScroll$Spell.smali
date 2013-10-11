.class public Landroid/app/SpellScroll$Spell;
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
    name = "Spell"
.end annotation


# static fields
.field public static final CAST_ACTION_ACTIVITY:I = 0x0

.field public static final CAST_ACTION_BROADCAST:I = 0x2

.field public static final CAST_ACTION_SERVICE:I = 0x1

.field public static final EXTRA_ATTR_KEY_CAST_ACTION:Ljava/lang/String; = "castAction"

.field public static final EXTRA_ATTR_KEY_HELP_TEXT:Ljava/lang/String; = "helpText"

.field public static final EXTRA_ATTR_KEY_IS_REPRESENTATIVE:Ljava/lang/String; = "isRepresentative"

.field public static final EXTRA_ATTR_KEY_MATCH_PATTERN:Ljava/lang/String; = "matchPattern"

.field public static final EXTRA_ATTR_KEY_SPELL_SET_NAME:Ljava/lang/String; = "spellSetName"

.field private static final PSEUDO_SPELL_NAME:Ljava/lang/String; = "launch"

.field private static sCastActionTable:Ljava/util/Map;
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
.field private final mDefaultCastAction:I

.field private mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$SpellEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mHintId:I

.field private final mIconId:I

.field private final mId:J

.field private mIngredients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$Ingredient;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsPseudo:Z

.field private final mLabelId:I

.field private final mLocalHash:I

.field private final mName:Ljava/lang/String;

.field private final mNonLocalizedLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1016
    const/4 v0, 0x0

    sput-object v0, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 6
    .parameter "packageContext"
    .parameter "info"
    .parameter "spellScrollName"

    .prologue
    .line 1059
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 1005
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    .line 1006
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    .line 1061
    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 1062
    .local v2, labelId:I
    iget v1, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 1064
    .local v1, iconId:I
    iget-object v0, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1066
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 1067
    if-nez v2, :cond_0

    .line 1068
    iget v2, v0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 1070
    :cond_0
    if-nez v1, :cond_1

    .line 1071
    iget v1, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 1075
    :cond_1
    const-string v4, "launch"

    iput-object v4, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    .line 1076
    iput v2, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    .line 1077
    iput v1, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    .line 1078
    iput v2, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    .line 1079
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-direct {p0, p3, v4}, Landroid/app/SpellScroll$Spell;->calculateId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/SpellScroll$Spell;->mId:J

    .line 1080
    const/4 v4, 0x0

    iput v4, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    .line 1081
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    .line 1083
    iget-object v4, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    iget-object v4, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1086
    .local v3, nonLocalizedLabel:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 1087
    :cond_2
    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1091
    :cond_3
    :goto_1
    iput-object v3, p0, Landroid/app/SpellScroll$Spell;->mNonLocalizedLabel:Ljava/lang/String;

    .line 1093
    invoke-direct {p0}, Landroid/app/SpellScroll$Spell;->calculateLocalHash()I

    move-result v4

    iput v4, p0, Landroid/app/SpellScroll$Spell;->mLocalHash:I

    .line 1094
    return-void

    .line 1083
    .end local v3           #nonLocalizedLabel:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 1087
    .restart local v3       #nonLocalizedLabel:Ljava/lang/String;
    :cond_5
    const-string v3, ""

    goto :goto_1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;I)V
    .locals 4
    .parameter "packageContext"
    .parameter "attr"
    .parameter "spellScrollName"
    .parameter "castAction"

    .prologue
    const/4 v3, 0x0

    .line 1019
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 1005
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    .line 1006
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    .line 1020
    sget-object v1, Lcom/android/internal/R$styleable;->Spell:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1023
    .local v0, ta:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    .line 1024
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    .line 1025
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    .line 1026
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    .line 1028
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1030
    iget-object v1, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1031
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name may not be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1034
    :cond_1
    iget-object v1, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-direct {p0, p3, v1}, Landroid/app/SpellScroll$Spell;->calculateId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/SpellScroll$Spell;->mId:J

    .line 1035
    iput p4, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    .line 1037
    iget v1, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    if-nez v1, :cond_2

    .line 1038
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Spell label must be a resource reference."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1041
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mNonLocalizedLabel:Ljava/lang/String;

    .line 1042
    iput-boolean v3, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    .line 1044
    invoke-direct {p0}, Landroid/app/SpellScroll$Spell;->calculateLocalHash()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mLocalHash:I

    .line 1045
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 1105
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 1005
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    .line 1006
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    .line 1106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/SpellScroll$Spell;->mId:J

    .line 1107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    .line 1108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    .line 1109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    .line 1110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    .line 1111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    .line 1113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-lez v0, :cond_0

    .line 1114
    new-instance v1, Landroid/app/SpellScroll$SpellEffect;

    invoke-direct {v1, p1}, Landroid/app/SpellScroll$SpellEffect;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p0, v1}, Landroid/app/SpellScroll$Spell;->addEffect(Landroid/app/SpellScroll$SpellEffect;)V

    .line 1113
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1117
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :goto_1
    if-lez v0, :cond_1

    .line 1118
    new-instance v1, Landroid/app/SpellScroll$Ingredient;

    invoke-direct {v1, p1}, Landroid/app/SpellScroll$Ingredient;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p0, v1}, Landroid/app/SpellScroll$Spell;->addIngredient(Landroid/app/SpellScroll$Ingredient;)V

    .line 1117
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1121
    :cond_1
    iget-object v1, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 1122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    .line 1123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SpellScroll$Spell;->mNonLocalizedLabel:Ljava/lang/String;

    .line 1125
    invoke-direct {p0}, Landroid/app/SpellScroll$Spell;->calculateLocalHash()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll$Spell;->mLocalHash:I

    .line 1126
    return-void

    .line 1122
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method static synthetic access$000(Landroid/app/SpellScroll$Spell;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 988
    iget-object v0, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/SpellScroll$Spell;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 988
    iget v0, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    return v0
.end method

.method static synthetic access$200(Landroid/app/SpellScroll$Spell;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 988
    iget v0, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    return v0
.end method

.method private calculateId(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .parameter "spellScrollName"
    .parameter "spellName"

    .prologue
    .line 1159
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1160
    .local v0, idHpart:I
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1161
    .local v1, idLpart:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 1163
    .local v2, idWpart:I
    int-to-long v3, v0

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    int-to-long v5, v1

    or-long/2addr v3, v5

    int-to-long v5, v2

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    xor-long/2addr v3, v5

    return-wide v3
.end method

.method private calculateLocalHash()I
    .locals 2

    .prologue
    .line 1141
    iget v0, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    .line 1142
    .local v0, result:I
    iget v1, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    xor-int/2addr v0, v1

    .line 1143
    iget v1, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    xor-int/2addr v0, v1

    .line 1144
    iget v1, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    xor-int/2addr v0, v1

    .line 1145
    iget-boolean v1, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    shl-int v1, v0, v1

    xor-int/2addr v0, v1

    .line 1147
    iget-object v1, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1148
    iget-object v1, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1151
    :cond_0
    return v0

    .line 1145
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized convertCastAction(Ljava/lang/String;)I
    .locals 5
    .parameter "castAction"

    .prologue
    .line 1353
    const-class v2, Landroid/app/SpellScroll$Spell;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1355
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    .line 1357
    sget-object v1, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    const-string v3, "startActivity"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    sget-object v1, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    const-string v3, "startService"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    sget-object v1, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    const-string v3, "sendBroadcast"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1364
    .local v0, trimmedCastAction:Ljava/lang/String;
    sget-object v1, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1365
    sget-object v1, Landroid/app/SpellScroll$Spell;->sCastActionTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1368
    :goto_0
    monitor-exit v2

    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 1353
    .end local v0           #trimmedCastAction:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addEffect(Landroid/app/SpellScroll$SpellEffect;)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 1208
    iget-object v0, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    return-void
.end method

.method public addIngredient(Landroid/app/SpellScroll$Ingredient;)V
    .locals 1
    .parameter "ingre"

    .prologue
    .line 1212
    iget-object v0, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1213
    return-void
.end method

.method public cast(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 17
    .parameter "context"
    .parameter "userInput"

    .prologue
    .line 1248
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll$Spell;->compile(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v6

    .line 1250
    .local v6, effects:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Landroid/content/Intent;>;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_1

    .line 1251
    :cond_0
    const-string v13, "SpellScroll"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Casting a spell failed. ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/app/SpellScroll$Spell;->getId()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] : no spell effect exists!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const/4 v13, 0x0

    .line 1322
    .end local v6           #effects:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Landroid/content/Intent;>;>;"
    :goto_0
    return v13

    .line 1255
    .restart local v6       #effects:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Landroid/content/Intent;>;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-eq v13, v14, :cond_2

    .line 1256
    const-string v13, "SpellScroll"

    const-string v14, "The number of compiled effects desn\'t match to the one of SpellEffects."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    const/4 v13, 0x0

    goto :goto_0

    .line 1260
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    .line 1262
    .local v2, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v2, :cond_9

    .line 1263
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1264
    .local v5, effect:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/SpellScroll$SpellEffect;

    invoke-virtual {v13}, Landroid/app/SpellScroll$SpellEffect;->hasAlternatives()Z

    move-result v7

    .line 1265
    .local v7, hasAlternatives:Z
    const/4 v12, 0x0

    .line 1266
    .local v12, success:Z
    const/4 v3, 0x0

    .line 1268
    .local v3, componentName:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    .local v10, intent:Landroid/content/Intent;
    :try_start_1
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 1271
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 1274
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/SpellScroll$Spell;->getCastAction()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 1290
    const-string v13, "SpellScroll"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown cast action was given. ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/app/SpellScroll$Spell;->getCastAction()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1302
    :cond_5
    :goto_3
    const/4 v12, 0x1

    .line 1306
    if-eqz v7, :cond_3

    .line 1311
    .end local v10           #intent:Landroid/content/Intent;
    :cond_6
    if-nez v12, :cond_8

    .line 1312
    :try_start_2
    new-instance v13, Landroid/content/ActivityNotFoundException;

    invoke-direct {v13, v3}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1315
    .end local v2           #N:I
    .end local v3           #componentName:Ljava/lang/String;
    .end local v5           #effect:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v6           #effects:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Landroid/content/Intent;>;>;"
    .end local v7           #hasAlternatives:Z
    .end local v8           #i:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #success:Z
    :catch_0
    move-exception v4

    .line 1316
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "SpellScroll"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Casting a spell failed. ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/app/SpellScroll$Spell;->getId()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1319
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1276
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #N:I
    .restart local v3       #componentName:Ljava/lang/String;
    .restart local v5       #effect:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v6       #effects:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Landroid/content/Intent;>;>;"
    .restart local v7       #hasAlternatives:Z
    .restart local v8       #i:I
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #intent:Landroid/content/Intent;
    .restart local v12       #success:Z
    :pswitch_0
    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 1293
    :catch_1
    move-exception v4

    .line 1294
    .local v4, e:Landroid/content/ActivityNotFoundException;
    if-eqz v7, :cond_7

    .line 1295
    :try_start_4
    const-string v13, "SpellScroll"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ActivityNotFoundException : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 1279
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_1
    :try_start_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v11

    .line 1281
    .local v11, started:Landroid/content/ComponentName;
    if-nez v11, :cond_5

    if-eqz v7, :cond_5

    goto/16 :goto_2

    .line 1287
    .end local v11           #started:Landroid/content/ComponentName;
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 1298
    .restart local v4       #e:Landroid/content/ActivityNotFoundException;
    :cond_7
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1262
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    .end local v10           #intent:Landroid/content/Intent;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1322
    .end local v3           #componentName:Ljava/lang/String;
    .end local v5           #effect:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v7           #hasAlternatives:Z
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #success:Z
    :cond_9
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public compile(Landroid/os/Bundle;)Ljava/util/List;
    .locals 6
    .parameter "userInput"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1327
    iget-object v3, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1328
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No spell effect information in this spell["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1331
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Landroid/content/Intent;>;>;"
    iget-object v3, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SpellScroll$SpellEffect;

    .line 1334
    .local v0, effect:Landroid/app/SpellScroll$SpellEffect;
    iget-object v3, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-virtual {v0, v3, p1}, Landroid/app/SpellScroll$SpellEffect;->compile(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1337
    .end local v0           #effect:Landroid/app/SpellScroll$SpellEffect;
    :cond_2
    return-object v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1168
    const/4 v0, 0x0

    return v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 7
    .parameter "pw"

    .prologue
    .line 1496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/app/SpellScroll$Spell;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hashCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/SpellScroll$Spell;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", labelId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nonLocalizedLabel=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/SpellScroll$Spell;->mNonLocalizedLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    iconId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isPseudo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hintId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    defaultCastAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Number of effects = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {p0}, Landroid/app/ExtraAttr$Owner;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    extraAttrs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/ExtraAttr$Owner;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1510
    :cond_0
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll$Ingredient;

    .line 1511
    .local v2, ingre:Landroid/app/SpellScroll$Ingredient;
    invoke-virtual {v2, p1}, Landroid/app/SpellScroll$Ingredient;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1514
    .end local v2           #ingre:Landroid/app/SpellScroll$Ingredient;
    :cond_1
    const/4 v3, 0x1

    .line 1515
    .local v3, j:I
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SpellScroll$SpellEffect;

    .line 1516
    .local v0, effect:Landroid/app/SpellScroll$SpellEffect;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      Effect #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {v0, p1}, Landroid/app/SpellScroll$SpellEffect;->dump(Ljava/io/PrintWriter;)V

    .line 1518
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1520
    .end local v0           #effect:Landroid/app/SpellScroll$SpellEffect;
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "otherObj"

    .prologue
    const/4 v3, 0x0

    .line 1427
    instance-of v2, p1, Landroid/app/SpellScroll$Spell;

    if-nez v2, :cond_0

    move v2, v3

    .line 1468
    :goto_0
    return v2

    :cond_0
    move-object v1, p1

    .line 1431
    check-cast v1, Landroid/app/SpellScroll$Spell;

    .line 1433
    .local v1, other:Landroid/app/SpellScroll$Spell;
    iget-wide v4, p0, Landroid/app/SpellScroll$Spell;->mId:J

    iget-wide v6, v1, Landroid/app/SpellScroll$Spell;->mId:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    iget v2, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    iget v4, v1, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    iget v4, v1, Landroid/app/SpellScroll$Spell;->mLabelId:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    iget v4, v1, Landroid/app/SpellScroll$Spell;->mIconId:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    iget v4, v1, Landroid/app/SpellScroll$Spell;->mHintId:I

    if-ne v2, v4, :cond_1

    iget-boolean v2, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    iget-boolean v4, v1, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    if-eq v2, v4, :cond_2

    :cond_1
    move v2, v3

    .line 1439
    goto :goto_0

    .line 1442
    :cond_2
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_3
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move v2, v3

    .line 1445
    goto :goto_0

    .line 1448
    :cond_6
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, v1, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_7

    move v2, v3

    .line 1449
    goto :goto_0

    .line 1452
    :cond_7
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, v1, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_8

    move v2, v3

    .line 1453
    goto :goto_0

    .line 1456
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 1457
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll$SpellEffect;

    iget-object v4, v1, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/SpellScroll$SpellEffect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    .line 1458
    goto/16 :goto_0

    .line 1456
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1462
    :cond_a
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 1463
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll$Ingredient;

    iget-object v4, v1, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/SpellScroll$Ingredient;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v3

    .line 1464
    goto/16 :goto_0

    .line 1462
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1468
    :cond_c
    invoke-super {p0, p1}, Landroid/app/ExtraAttr$Owner;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public getCastAction()I
    .locals 3

    .prologue
    .line 1372
    const-string v2, "castAction"

    invoke-virtual {p0, v2}, Landroid/app/ExtraAttr$Owner;->getExtraString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1373
    .local v0, castAction:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/app/SpellScroll$Spell;->convertCastAction(Ljava/lang/String;)I

    move-result v1

    .line 1375
    .local v1, result:I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .end local v1           #result:I
    :goto_1
    return v1

    .line 1373
    :cond_0
    iget v1, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    goto :goto_0

    .line 1375
    .restart local v1       #result:I
    :cond_1
    iget v1, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    goto :goto_1
.end method

.method public getEffects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$SpellEffect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1216
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getHelpTextId()I
    .locals 1

    .prologue
    .line 1399
    const-string v0, "helpText"

    invoke-virtual {p0, v0}, Landroid/app/ExtraAttr$Owner;->getExtraInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHintId()I
    .locals 1

    .prologue
    .line 1391
    iget v0, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 1387
    iget v0, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1348
    iget-wide v0, p0, Landroid/app/SpellScroll$Spell;->mId:J

    return-wide v0
.end method

.method public getIngredients()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1220
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getLabelId()I
    .locals 1

    .prologue
    .line 1383
    iget v0, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    return v0
.end method

.method public getMatchPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1472
    const-string v0, "matchPattern"

    invoke-virtual {p0, v0}, Landroid/app/ExtraAttr$Owner;->getExtraString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNonLocalizedLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Landroid/app/SpellScroll$Spell;->mNonLocalizedLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getSpellSetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1407
    const-string v0, "spellSetName"

    invoke-virtual {p0, v0}, Landroid/app/ExtraAttr$Owner;->getExtraString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasIngredientName(Ljava/lang/String;)Z
    .locals 3
    .parameter "ingredientName"

    .prologue
    .line 1230
    iget-object v2, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SpellScroll$Ingredient;

    .line 1231
    .local v1, ingre:Landroid/app/SpellScroll$Ingredient;
    invoke-virtual {v1}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1232
    const/4 v2, 0x1

    .line 1236
    .end local v1           #ingre:Landroid/app/SpellScroll$Ingredient;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 1412
    iget v4, p0, Landroid/app/SpellScroll$Spell;->mLocalHash:I

    invoke-super {p0}, Landroid/app/ExtraAttr$Owner;->hashCode()I

    move-result v5

    xor-int v3, v4, v5

    .line 1414
    .local v3, result:I
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll$Ingredient;

    .line 1415
    .local v2, ingre:Landroid/app/SpellScroll$Ingredient;
    invoke-virtual {v2}, Landroid/app/SpellScroll$Ingredient;->hashCode()I

    move-result v4

    xor-int/2addr v3, v4

    goto :goto_0

    .line 1418
    .end local v2           #ingre:Landroid/app/SpellScroll$Ingredient;
    :cond_0
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SpellScroll$SpellEffect;

    .line 1419
    .local v0, effect:Landroid/app/SpellScroll$SpellEffect;
    invoke-virtual {v0}, Landroid/app/SpellScroll$SpellEffect;->hashCode()I

    move-result v4

    xor-int/2addr v3, v4

    goto :goto_1

    .line 1422
    .end local v0           #effect:Landroid/app/SpellScroll$SpellEffect;
    :cond_1
    return v3
.end method

.method public isPseudo()Z
    .locals 1

    .prologue
    .line 1395
    iget-boolean v0, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    return v0
.end method

.method public isRepresentative()Z
    .locals 1

    .prologue
    .line 1403
    const-string v0, "isRepresentative"

    invoke-virtual {p0, v0}, Landroid/app/ExtraAttr$Owner;->getExtraString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 8
    .parameter "text"

    .prologue
    const/4 v4, 0x0

    .line 1476
    invoke-virtual {p0}, Landroid/app/SpellScroll$Spell;->getMatchPattern()Ljava/lang/String;

    move-result-object v1

    .line 1478
    .local v1, matchPattern:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1492
    :cond_0
    :goto_0
    return v4

    .line 1483
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1485
    .local v3, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1487
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 1488
    .end local v2           #matcher:Ljava/util/regex/Matcher;
    .end local v3           #pattern:Ljava/util/regex/Pattern;
    :catch_0
    move-exception v0

    .line 1489
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SpellScroll"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Match failed in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 1173
    iget-wide v4, p0, Landroid/app/SpellScroll$Spell;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1174
    iget v4, p0, Landroid/app/SpellScroll$Spell;->mDefaultCastAction:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1176
    iget v4, p0, Landroid/app/SpellScroll$Spell;->mLabelId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    iget v4, p0, Landroid/app/SpellScroll$Spell;->mIconId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    iget v4, p0, Landroid/app/SpellScroll$Spell;->mHintId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    if-nez v4, :cond_3

    .line 1182
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    :cond_0
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    if-nez v4, :cond_4

    .line 1193
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    :cond_1
    iget-object v4, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1203
    iget-boolean v4, p0, Landroid/app/SpellScroll$Spell;->mIsPseudo:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    iget-object v3, p0, Landroid/app/SpellScroll$Spell;->mNonLocalizedLabel:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1205
    return-void

    .line 1184
    :cond_3
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mEffects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SpellScroll$SpellEffect;

    .line 1188
    .local v0, effect:Landroid/app/SpellScroll$SpellEffect;
    invoke-virtual {v0, p1, p2}, Landroid/app/SpellScroll$SpellEffect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1195
    .end local v0           #effect:Landroid/app/SpellScroll$SpellEffect;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1197
    iget-object v4, p0, Landroid/app/SpellScroll$Spell;->mIngredients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll$Ingredient;

    .line 1198
    .local v2, ingre:Landroid/app/SpellScroll$Ingredient;
    invoke-virtual {v2, p1, p2}, Landroid/app/SpellScroll$Ingredient;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1
.end method
