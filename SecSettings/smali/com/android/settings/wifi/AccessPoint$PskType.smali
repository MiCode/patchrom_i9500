.class final enum Lcom/android/settings_ex/wifi/AccessPoint$PskType;
.super Ljava/lang/Enum;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/AccessPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings_ex/wifi/AccessPoint$PskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings_ex/wifi/AccessPoint$PskType;

.field public static final enum FT:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

.field public static final enum FT_WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

.field public static final enum UNKNOWN:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

.field public static final enum WPA:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

.field public static final enum WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

.field public static final enum WPA_WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 78
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    const-string v1, "WPA"

    invoke-direct {v0, v1, v4}, Lcom/android/settings_ex/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->WPA:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 79
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    const-string v1, "WPA2"

    invoke-direct {v0, v1, v5}, Lcom/android/settings_ex/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 80
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    const-string v1, "WPA_WPA2"

    invoke-direct {v0, v1, v6}, Lcom/android/settings_ex/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 81
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    const-string v1, "FT"

    invoke-direct {v0, v1, v7}, Lcom/android/settings_ex/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->FT:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 82
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    const-string v1, "FT_WPA2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->FT_WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    sget-object v1, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->WPA:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->FT:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->FT_WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->$VALUES:[Lcom/android/settings_ex/wifi/AccessPoint$PskType;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/wifi/AccessPoint$PskType;
    .locals 1
    .parameter "name"

    .prologue
    .line 76
    const-class v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/wifi/AccessPoint$PskType;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->$VALUES:[Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    return-object v0
.end method
