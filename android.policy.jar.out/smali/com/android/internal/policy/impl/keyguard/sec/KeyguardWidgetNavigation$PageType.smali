.class final enum Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;
.super Ljava/lang/Enum;
.source "KeyguardWidgetNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

.field public static final enum add:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

.field public static final enum current_add:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

.field public static final enum current_home:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

.field public static final enum current_normal:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

.field public static final enum home:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

.field public static final enum normal:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    const-string v1, "current_add"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->current_add:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    const-string v1, "add"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->add:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    const-string v1, "current_home"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->current_home:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    const-string v1, "home"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->home:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    const-string v1, "current_normal"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->current_normal:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    const-string v1, "normal"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->normal:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->current_add:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->add:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->current_home:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->home:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->current_normal:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->normal:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 40
    const-class v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    return-object v0
.end method
