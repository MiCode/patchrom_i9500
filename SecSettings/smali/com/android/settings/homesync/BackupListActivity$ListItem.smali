.class Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;
.super Ljava/lang/Object;
.source "BackupListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/homesync/BackupListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItem"
.end annotation


# instance fields
.field private Name:Ljava/lang/String;

.field private Size:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings_ex/homesync/BackupListActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/homesync/BackupListActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "_Name"
    .parameter "_Size"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;->Name:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;->Size:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;->Size:Ljava/lang/String;

    return-object v0
.end method
