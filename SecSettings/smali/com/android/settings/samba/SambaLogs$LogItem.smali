.class public Lcom/android/settings_ex/samba/SambaLogs$LogItem;
.super Ljava/lang/Object;
.source "SambaLogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/samba/SambaLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogItem"
.end annotation


# instance fields
.field ID:Ljava/lang/String;

.field INTIME:Ljava/lang/String;

.field IP:Ljava/lang/String;

.field ITEMNAME:Ljava/lang/String;

.field MODE:Ljava/lang/String;

.field OUTTIME:Ljava/lang/String;

.field STATE:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "_id"
    .parameter "mIP"
    .parameter "mINTIME"
    .parameter "mOUTTIME"
    .parameter "mITEMNAME"
    .parameter "mMODE"
    .parameter "mSTATE"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/settings_ex/samba/SambaLogs$LogItem;->ID:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/android/settings_ex/samba/SambaLogs$LogItem;->IP:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/android/settings_ex/samba/SambaLogs$LogItem;->INTIME:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/android/settings_ex/samba/SambaLogs$LogItem;->OUTTIME:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/android/settings_ex/samba/SambaLogs$LogItem;->ITEMNAME:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/android/settings_ex/samba/SambaLogs$LogItem;->MODE:Ljava/lang/String;

    .line 69
    iput-object p7, p0, Lcom/android/settings_ex/samba/SambaLogs$LogItem;->STATE:Ljava/lang/String;

    .line 70
    return-void
.end method
