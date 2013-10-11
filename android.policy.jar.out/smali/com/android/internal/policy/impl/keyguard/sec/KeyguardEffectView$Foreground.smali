.class final enum Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;
.super Ljava/lang/Enum;
.source "KeyguardEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Foreground"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

.field public static final enum circle:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

.field public static final enum lens:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

.field public static final enum none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    const-string v1, "lens"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->lens:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    const-string v1, "circle"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->circle:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    const-string v1, "none"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->lens:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->circle:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;
    .locals 1
    .parameter "name"

    .prologue
    .line 52
    const-class v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    return-object v0
.end method
