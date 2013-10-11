.class public Landroid/telephony/MultiSimTelephonyManager;
.super Landroid/telephony/TelephonyManager;
.source "MultiSimTelephonyManager.java"


# static fields
.field private static sInstance:Landroid/telephony/MultiSimTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Landroid/telephony/MultiSimTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/MultiSimTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/MultiSimTelephonyManager;->sInstance:Landroid/telephony/MultiSimTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 37
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "simSlot"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public static getDefault(I)Landroid/telephony/MultiSimTelephonyManager;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 44
    sget-object v0, Landroid/telephony/MultiSimTelephonyManager;->sInstance:Landroid/telephony/MultiSimTelephonyManager;

    return-object v0
.end method


# virtual methods
.method public getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 51
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method
