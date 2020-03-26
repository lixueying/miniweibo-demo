//
//  ViewController.swift
//  miniweibo-demo
//
//  Created by xyli on 2020/3/23.
//  Copyright © 2020 xyli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel = MomentViewModel.init(momentService: MomentService())
    var moments: [Moment] = []
    var text: String = ""
    var id: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        viewModel.fetchMoments(completion: {
            (moments) in
            print(moments[0])
            self.moments = moments
            self.text = moments[0].text
            self.id = moments[0].id
        })
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        viewModel.fetchMoments(completion: {
//            (moments) in
//            self.moments = moments
//            self.text = moments[0].text
//            self.id = moments[0].id
//        })
//    }
    
    //MARK: UITableViewDataSource
        // cell的个数
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
        }
        // UITableViewCell
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cellid = "testCellID"
            var cell = tableView.dequeueReusableCell(withIdentifier: cellid)
            if cell==nil {
                cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellid)
            }
            
            cell?.textLabel?.text = "\(self.id)"
            cell?.detailTextLabel?.text = "\(self.text)"
            cell?.imageView?.image = UIImage(named:"Expense_success")
            return cell!
        }
      
    //MARK: UITableViewDelegate
        // 设置cell高度
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 84.0
        }
        // 选中cell后执行此方法
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print(indexPath.row)
        }
}

