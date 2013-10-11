.class public final enum Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;
.super Ljava/lang/Enum;
.source "LensFlareView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EasingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

.field public static final enum IN:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

.field public static final enum INOUT:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

.field public static final enum OUT:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1103
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    const-string v1, "IN"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->IN:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    const-string v1, "OUT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->OUT:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    const-string v1, "INOUT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->INOUT:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    .line 1102
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->IN:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->OUT:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->INOUT:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

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
    .line 1102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;
    .locals 1
    .parameter "name"

    .prologue
    .line 1102
    const-class v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;
    .locals 1

    .prologue
    .line 1102
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    return-object v0
.end method
