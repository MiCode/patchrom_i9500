.class public final enum Lcom/kikin/theme/ThemeDetector$KikinTheme;
.super Ljava/lang/Enum;
.source "ThemeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kikin/theme/ThemeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KikinTheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kikin/theme/ThemeDetector$KikinTheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kikin/theme/ThemeDetector$KikinTheme;

.field public static final enum DARK:Lcom/kikin/theme/ThemeDetector$KikinTheme;

.field public static final enum LIGHT:Lcom/kikin/theme/ThemeDetector$KikinTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/kikin/theme/ThemeDetector$KikinTheme;

    const-string v1, "DARK"

    invoke-direct {v0, v1, v2}, Lcom/kikin/theme/ThemeDetector$KikinTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/theme/ThemeDetector$KikinTheme;->DARK:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    .line 10
    new-instance v0, Lcom/kikin/theme/ThemeDetector$KikinTheme;

    const-string v1, "LIGHT"

    invoke-direct {v0, v1, v3}, Lcom/kikin/theme/ThemeDetector$KikinTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/theme/ThemeDetector$KikinTheme;->LIGHT:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kikin/theme/ThemeDetector$KikinTheme;

    sget-object v1, Lcom/kikin/theme/ThemeDetector$KikinTheme;->DARK:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kikin/theme/ThemeDetector$KikinTheme;->LIGHT:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kikin/theme/ThemeDetector$KikinTheme;->$VALUES:[Lcom/kikin/theme/ThemeDetector$KikinTheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kikin/theme/ThemeDetector$KikinTheme;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lcom/kikin/theme/ThemeDetector$KikinTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kikin/theme/ThemeDetector$KikinTheme;

    return-object v0
.end method

.method public static values()[Lcom/kikin/theme/ThemeDetector$KikinTheme;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/kikin/theme/ThemeDetector$KikinTheme;->$VALUES:[Lcom/kikin/theme/ThemeDetector$KikinTheme;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kikin/theme/ThemeDetector$KikinTheme;

    return-object v0
.end method
