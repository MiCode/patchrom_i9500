.class Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field final synthetic val$listPosition:I

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;I)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->val$listPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->val$listPosition:I

    invoke-virtual {v0, v1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 311
    return-void
.end method
