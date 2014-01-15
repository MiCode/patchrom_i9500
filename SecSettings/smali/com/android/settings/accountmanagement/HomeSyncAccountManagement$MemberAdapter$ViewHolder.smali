.class public Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "HomeSyncAccountManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field email:Landroid/widget/TextView;

.field is_register:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field size:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->this$1:Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
