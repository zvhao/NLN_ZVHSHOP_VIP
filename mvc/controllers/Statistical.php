<?php

class Statistical extends Controller
{
    private $products;
    private $categories;
    private $users;
    private $cart;
    private $bills;

    function __construct()
    {
        $this->users = $this->model('UserModel');
        $this->products = $this->model('ProductModel');
        $this->categories = $this->model('CategoryModel');
        $this->bills = $this->model('BillModel');
    }

    function index()
    {
        $dateStart = '2000-01-01 00:00:01';
        $dateEnd = date("Y-m-d H:i:s");
        // $id = 0;

        if (isset($_POST['btn-statistical'])) {
            if ($_POST['date_start'] > date("Y-m-d") || $_POST['date_end'] > date("Y-m-d")) {
                $_SESSION['msg'] = 'Vui lòng nhập ngày không lớn hơn ngày hiện tại!';
            } else if (strtotime($_POST['date_start']) > strtotime($_POST['date_end'])) {
                $_SESSION['msg'] = 'Vui lòng nhập ngày bắt đầu nhỏ hơn ngày kết thúc!';
            } else {
                $dateStart = $_POST['date_start'];
                if ($_POST['date_end'] == date("Y-m-d"))
                    $dateEnd = date("Y-m-d H:i:s");
                else $dateEnd = $_POST['date_end'];
                unset($_SESSION['msg']);
            }
        }

        // $id = $_SESSION['idDetailBill'];

        $sumBillStatistical = $this->bills->sumBillStatistical($dateStart, $dateEnd);
        $countBillStatistical = $this->bills->countBillStatistical($dateStart, $dateEnd);
        $BillStatistical = $this->bills->BillStatistical($dateStart, $dateEnd);
        // $detailBillStatistical = $this->bills->detailBillStatistical($id);
        // $SelectOneBill = $this->bills->SelectOneBill($id);

        $billsNew = [];
        foreach ($BillStatistical as $bill) {
            $bill['detail'] = $this->bills->getDetailBill($bill['id']);
            if ($bill['user_id'] > 0) {
                $bill['email_user'] = $this->users->SelectUser($bill['user_id'])['email'];
                $bill['name_user'] = $this->users->SelectUser($bill['user_id'])['name'];
            } else {
                $bill['email_user'] = '';
                $bill['name_user'] = '';
                $bill['user_id'] = 'Không có tài khoản';
            }
            array_push($billsNew, $bill);
        }

        // show_array($detailBillStatistical);


        return $this->view('admin', [
            'title' => 'THỐNG KÊ DOANH THU',
            'page' => 'manager/statistical',
            'js' => ['statistical'],
            'sumBillStatistical' => $sumBillStatistical,
            'countBillStatistical' => $countBillStatistical,
            'billsNew' => $billsNew,
            // 'detailBillStatistical' => $detailBillStatistical,
        ]);
    }

    function show_detail()
    {
        if (isset($_POST['id']) && $_POST['id']) {
            $id_bill = $_POST['id'];
            $detailBillStatistical = $this->bills->detailBillStatistical($id_bill);
            $detailBillStatistical['detail'] = $this->bills->getDetailBill($id_bill);
            if ($detailBillStatistical['user_id'] > 0) {
                $detailBillStatistical['email_user'] = $this->users->SelectUser($detailBillStatistical['user_id'])['email'];
                $detailBillStatistical['name_user'] = $this->users->SelectUser($detailBillStatistical['user_id'])['name'];
            } else {
                $detailBillStatistical['email_user'] = '';
                $detailBillStatistical['name_user'] = '';
                $detailBillStatistical['user_id'] = 'Không có tài khoản';
            }
            // array_push($detailBillStatisticalNew, $detailBillStatistical);
            print_r(json_encode($detailBillStatistical));
        }
    }
}
