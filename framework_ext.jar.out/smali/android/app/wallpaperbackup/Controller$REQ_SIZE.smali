.class public final enum Landroid/app/wallpaperbackup/Controller$REQ_SIZE;
.super Ljava/lang/Enum;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "REQ_SIZE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/wallpaperbackup/Controller$REQ_SIZE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

.field public static final enum MINIMUM_SIZE:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

.field public static final enum SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 291
    new-instance v0, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3, v3}, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    new-instance v0, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    const-string v1, "MINIMUM_SIZE"

    const/high16 v2, 0xa0

    invoke-direct {v0, v1, v4, v2}, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->MINIMUM_SIZE:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    .line 290
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    sget-object v1, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->MINIMUM_SIZE:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    aput-object v1, v0, v4

    sput-object v0, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->$VALUES:[Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->value:I

    .line 295
    iput p3, p0, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->value:I

    .line 296
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/wallpaperbackup/Controller$REQ_SIZE;
    .locals 1
    .parameter "name"

    .prologue
    .line 290
    const-class v0, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    return-object v0
.end method

.method public static values()[Landroid/app/wallpaperbackup/Controller$REQ_SIZE;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->$VALUES:[Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->value:I

    return v0
.end method
