.class public final enum Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
.super Ljava/lang/Enum;
.source "SimeCandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/candidate/SimeCandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CCShowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

.field public static final enum CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

.field public static final enum CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

.field public static final enum CommonHZNormal_NoTabBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

.field public static final enum HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

.field public static final enum HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

.field public static final enum OnlyTabBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

.field public static final enum OnlyToolBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

.field public static final enum PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

.field public static final enum PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

.field public static final enum PinYinLeftAndCommon:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    const-string v1, "CommonHZExpand"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 86
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    const-string v1, "CommonHZNormal"

    invoke-direct {v0, v1, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 87
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    const-string v1, "CommonHZNormal_NoTabBar"

    invoke-direct {v0, v1, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal_NoTabBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 88
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    const-string v1, "HWTopHZNormal"

    invoke-direct {v0, v1, v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 89
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    const-string v1, "HWBoth"

    invoke-direct {v0, v1, v7}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 90
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    const-string v1, "PinYinBoth"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 91
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    const-string v1, "PinYinBothNormal"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 92
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    const-string v1, "PinYinLeftAndCommon"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinLeftAndCommon:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 93
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    const-string v1, "OnlyTabBar"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyTabBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 94
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    const-string v1, "OnlyToolBar"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyToolBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 84
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal_NoTabBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinLeftAndCommon:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyTabBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyToolBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->$VALUES:[Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    .locals 1
    .parameter "name"

    .prologue
    .line 84
    const-class v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->$VALUES:[Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    return-object v0
.end method